//====================================================
// Project     : RTL to GDS of SPI Protocol
// Author      : Agnibha Sarkar
//
// Revision    : v1.0
// Last Updated: 23-06-2026
//
// Changes: None
//====================================================


`define SPI_DIVIDER_LEN 16 //thus divider value can be from 0 to 65535
`define SPI_MAX_CHARS 128 //Maximum 128 bits can be transferred in single transaction
`define SPI_SS_MAX 32 //Maximum number of Slave Signals
`define CPU_DATA_BUS_WIDTH 32 //Corresponds to a 32 bit processor
 