//====================================================
// Project     : RTL to GDS of SPI Protocol
// Author      : Agnibha Sarkar
//
// Revision    : v1.0
// Last Updated: 23-06-2026
//
// Changes: Supports Mode 0 SPI Communication
//====================================================


`define SPI_DIVIDER_LEN 16 //thus divider value can be from 0 to 65535
`define SPI_MAX_CHARS 128 //Maximum 128 bits can be transferred in single transaction
`define SPI_SS_MAX 32 //Maximum number of Slave Signals
`define CPU_DATA_BUS_WIDTH 32 //Corresponds to a 32 bit processor
 
 // Register offsets
`define SPI_RX_0     0
`define SPI_RX_1     1
`define SPI_RX_2     2
`define SPI_RX_3     3
`define SPI_TX_0     0
`define SPI_TX_1     1
`define SPI_TX_2     2
`define SPI_TX_3     3
`define SPI_CTRL     4
`define SPI_DIVIDER  5
`define SPI_SS       6
`define SPI_STATUS   7

// Control register format
`define SPI_CTRL_BIT_NB   16 //Number of bits in Control Register

//Bit positions in control register
`define SPI_CTRL_ASS      15 //Automatic Slave Select
`define SPI_CTRL_IE       14 //Interrup Enable mode
`define SPI_CTRL_LSB      13
`define SPI_CTRL_GO       12
`define SPI_CTRL_CHAR_LEN 11:4