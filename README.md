# APB4-Interfaced SPI Master IP RTL-GDSII Flow

![Technology](https://img.shields.io/badge/Technology-SkyWater130nm%20HD-blue)
![Tools](https://img.shields.io/badge/Tools-Yosys%20%7C%20OpenROAD-orange)
![License](https://img.shields.io/badge/License-MIT-green)

This repository details the complete RTL-to-GDSII physical design implementation of a highly configurable **Serial Peripheral Interface (SPI) Master IP** fully compliant with **AMBA APB4 protocol**. The design is implemented using the open-source SkyWater 130nm HD standard cell library, synthesized with Yosys, and physical design executed via the OpenROAD application. The IP supports single-frame transactions up to 128 bits, multiple slave select lines (32), and efficient APB4 register access.

---

## 📁 RTL Architecture & Hardware Specifications

The design logic is partitioned into clean, structural modules providing high performance, reconfigurability, and reliable synchronization. The entire hardware core runs on a single primary system clock (`PCLK`), with no secondary hardware clocks generated. Clock Domain Crossing (CDC) vulnerabilities are mitigated by generating synchronous strobe pulses for shift register operations.

### 📐 System Block Diagram
The complete register-transfer level (RTL) architecture including the APB4 controller interface, internal control registers, clock divider, and 128-bit shift registers is illustrated in the complex schematic view below:

![SPI Master APB4 RTL Architecture](reports/images/spi_rtl_architecture.png)

### 🔌 APB4 Peripheral Interface & Top-Level Pins
The top-level module (`spi_top`) implements a native APB4 slave wrapper. Register addressing is byte-addressable via `PADDR[4:2]`, mapping across eight 32-bit registers (TXx, RXx, CTRL, DIV).

| Pin Name | Direction | Width | Protocol | Description |
| :--- | :--- | :--- | :--- | :--- |
| `PCLK` | Input | 1-bit | System | Main Synchronous Bus Clock. All logic runs here. |
| `PRESETn` | Input | 1-bit | System | Active-Low System Reset. |
| `PADDR` | Input | 5-bit | APB4 | Register Address Bus (Bits [4:2] define reg). |
| `PWDATA` | Input | 32-bit | APB4 | Write Data Bus. |
| `PWRITE` | Input | 1-bit | APB4 | High=Write; Low=Read. |
| `PSEL` | Input | 1-bit | APB4 | Peripheral Select. |
| `PENABLE` | Input | 1-bit | APB4 | Strobe for second phase of access. |
| `PSTRB` | Input | 4-bit | APB4 | Byte lanes for partial writes. |
| `PRDATA` | Output | 32-bit | APB4 | Read Data Bus. |
| `PREADY` | Output | 1-bit | APB4 | Ready signal (Tied high, zero wait-state). |
| `PSLVERR` | Output | 1-bit | APB4 | Slave Error signal (Tied low). |
| `ss_pad_o` | Output | 32-bit | SPI | Direct multi-slave select outputs. |
| `sclk_pad_o`| Output | 1-bit | SPI | Generated Serial Clock. |
| `mosi_pad_o`| Output | 1-bit | SPI | Master Out Slave In data line. |
| `miso_pad_i`| Input | 1-bit | SPI | Master In Slave Out data line. |
| `spi_int_o` | Output | 1-bit | Interrupt | High-active transaction complete interrupt. |

### ⏱️ Clock Generation & CDC Mitigation Strategy
Reliable operation and complete avoidance of Clock Domain Crossing (CDC) issues are achieved by strictly generating synchronous *strobes* rather than distinct clocks for internal logic. All flip-flops drive exclusively off `PCLK`. The `clk_gen` module monitors an internal counter tracking against the 16-bit `divider` register value to assert single-cycle pulses (`pos_edge` and `neg_edge`).

* **SPI Clock Generation:** The SPI Serial Clock output (`sclk_pad_o`) frequency $f_{\text{SCLK}}$ is derived from the main system clock $f_{\text{PCLK}}$ using the formula:
    $$f_{\text{SCLK}} = \frac{f_{\text{PCLK}}}{2 \times (\text{divider} + 1)}$$
* **Safe Sampling & Launching:** outbound `mosi_pad_o` data bits are launched exclusively on the `neg_edge` strobe. Inbound `miso_pad_i` data bits are sampled exclusively on the `pos_edge` strobe.

### 🏎️ 128-bit Datapath & Shifter Implementation
The core provides robust transaction support up to 128 bits per frame. Host CPU access is limited to 32-bit registers (TX_0-TX_3 and RX_0-RX_3). The `shifter.v` module implements complex logic to aggregate or distribute data between the standard APB interface and the wide internal shift registers.

* **Multi-Driver Prevention:** A critical design requirement, verified during RTL coding, is the prevention of multi-driver scenarios where internal signals are driven from multiple `always` blocks. Inside `shifter.v`, all assignment logic for a given counter, shift register, or control bit is meticulously constrained within a **single synchronous procedural block**. This ensures that Yosys does not infer conflicting logic or bus contention during synthesis.
* **Variable Bit Length support:** The configuration register CHAR_LEN (Bits 11:4 of SPI_CTRL) dynamically sets the exact number of bits per transaction, from 1 up to 128 bits. The datapath uses `PSTRB` byte lanes to enable specific 32-bit latches, allowing efficient partial word writes for smaller transfers.

### 🔄 Transaction Lifecycle Management
The transaction lifecycle is tightly controlled by handshakes between the register file and the shifter logic, primarily using `go`, `t_progress`, and `last_bit` signals.

1.  **Initiation:** The host CPU pre-loads TX registers and sets the `GO` command flag (SPI_CTRL Bit 12).
2.  **Execution:** The control logic asserts `t_progress` and latches CHAR_LEN into the decrement counter (`counter <= len`). The core automatically pre-loads the first bit onto `mosi_pad_o` with zero latency.
3.  **Shifting:** The core decrements the counter at every valid `pos_edge`. The shifter updates MOSI on `neg_edge` and samples MISO on `pos_edge`.
4.  **Completion:** When the counter reaches zero (`last_bit` goes high), the core waits for the final trailing `neg_edge`, then de-asserts `t_progress`. It automatically clears the `GO` bit and fires the external `spi_int_o` high to alert the CPU.

### 🎛️ Control Register Mapping (`SPI_CTRL`)
The 16-bit wide primary configuration register (at address offset `0x10`) is mapped as follows:

| Bit Index | Field Flag | Reset | Functional Property |
| :--- | :--- | :--- | :--- |
| `15` | `ASS` | `1'b0` | **Automatic Slave Select:** High = SS lines activate during data transfer only. Low = SS manual software control. |
| `14` | `IE` | `1'b0` | **Interrupt Enable:** Enables firing `spi_int_o` high on frame completion. |
| `13` | `LSB` | `1'b0` | **Bit Order Config:** High = LSB first; Low = MSB first. |
| `12` | `GO` | `1'b0` | **Transaction Init:** Writing `1` initiates the transfer. Automatically cleared on frame complete. |
| `11:4` | `CHAR_LEN` | `8'b0` | **Character Length:** Defines transaction length from 1 to 128 bits. |
| `3:0` | `Reserved` | `4'b0` | Reserved system bits. |

---

## 📑 Timing Constraints & Synthesis Methodology

### ⏱️ Synopsys Design Constraints (SDC) Analysis
The performance and synthesis targets are explicitly defined in `constraints.sdc` using industry-standard commands. All external interfaces are constrained to realistic physical boundaries to model a real system environment.

* **Primary Clock Period:** The design targets a fundamental system period constraint of **5.0 ns** (equivalent to **200 MHz**), defined on the input port `PCLK` under the logical identifier `APB_CLK`.
* **Uncertainty and Latency:** The clock definition includes modeling for explicit source latency and network clock latency values of **0.2 ns**, accounting for physical clock distribution effects.
* **Virtual Clock Reference:** An unmapped virtual clock, `vclk_APB_CLK`, is defined with identical period boundaries to model the behavior of the external SPI slave device interface.
* **Peripheral Delay Boundaries:** The input and output delays are set to **20%** of the target clock period window (**1.0 ns**):
    $$\text{Delay}_{\text{I/O}} = 5.0\,\text{ns} \times 0.20 = 1.0\,\text{ns}$$
    This configuration ensures that all peripheral input signals arrive within the 20% hold time window and all peripheral output signals stabilize within the 20% setup time window.

### 🛠️ Synthesis Execution Workflow
Synthesis is executed via the Yosys open-source synthesis suite, as orchestrated by the `synthesis.tcl` script. The flow generates a technology-mapped gate-level netlist in the SkyWater 130nm HD (High Density) PDK platform using the target performance timing corner model: `sky130_fd_sc_hd__tt_025C_1v80.lib`.

The synthesis flow checks the design through several automated steps:

1.  **RTL Reading & Parsing:** Compiles design files with SystemVerilog parser wrapper (`read_verilog -sv`).
2.  **Elaboration:** Translates behavioral verilog into generic RTL netlist (`proc`), flattens nested hierarchies for optimized DFT placement, and decomposes complex logic like state machines (`fsm`).
3.  **Technology Mapping:** Maps the design to the SkyWater 130nm HD logic gates.
4.  **Gate-Level Optimization:** Integrates specialized components: structural latches (`cells_latch_hd.v`), clock-gating cells (`cells_clkgate_hd.v`), and physical constant tie cells (`sky130_fd_sc_hd__conb_1`) via `hilomap`.
5.  **Netlist Export:** Generates the structural netlist (`spi_top_synth.v`) and outputs a final synthesis statistics report.
