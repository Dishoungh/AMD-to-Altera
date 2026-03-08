module simple_hps
(
	// FPGA Connections (appears in Pin Planner)
	input wire CLOCK_50,
	input wire SW[9:0],
	output wire LEDR[9:0],
	
	// HPS Connections (appears in Pin Planner)
	inout wire HPS_CONV_USB_N,
	output wire[14:0] HPS_DDR3_ADDR,
	output wire[2:0] HPS_DDR3_BA,
	output wire HPS_DDR3_CAS_N,
	output wire HPS_DDR3_CKE,
	output wire HPS_DDR3_CK_N,
	output wire HPS_DDR3_CK_P,
	output wire HPS_DDR3_CS_N,
	output wire[3:0] HPS_DDR3_DM,
	inout wire[31:0] HPS_DDR3_DQ,
	inout wire[3:0] HSP_DDR3_DQS_N,
	inout wire[3:0] HSP_DDR3_DQS_P,
	output wire HPS_DDR3_ODT,
	output wire HPS_DDR3_RAS_N,
	output wire HPS_DDR3_RESET_N,
	input wire HPS_DDR3_RZQ,
	output wire HPS_DDR3_WE_N,
	
	output wire HPS_ENET_GTX_CLK,
	inout wire HPS_ENET_INT_N,
	output wire HPS_ENET_MDC,
	inout wire HPS_ENET_MDIO,
	input wire HPS_ENET_RX_CLK,
	input wire[3:0] HPS_ENET_RX_DATA,
	input wire HPS_ENET_RX_DV,
	output wire[3:0] HPS_ENET_TX_DATA,
	output wire HPS_ENET_TX_EN,

	wire[3:0] HPS_FLASH_DATA,
	wire HPS_FLASH_DCLK,
	wire HPS_FLASH_NCSO,
	
	wire HPS_GSENSOR_INT,
	
	inout wire HPS_I2C1_SCLK,
	inout wire HPS_I2C1_SDAT,
	inout wire HPS_I2C2_SCLK,
	wire HPS_I2C2_SDAT,
	wire HPS_I2C_CONTROL,
	
	inout wire HPS_KEY,
	
	wire HPS_LED,
	
	wire HPS_LTC_GPIO,

	output wire HPS_SD_CLK,
	inout wire HPS_SD_CMD,
	inout wire[3:0] HPS_SD_DATA,

	input wire HPS_SPIM_CLK,
	output wire HPS_SPIM_MISO,
	input wire HPS_SPIM_MOSI,
	input wire HPS_SPIM_SS,

	input wire HPS_UART_RX,
	output wire HPS_UART_TX,

	input wire HPS_USB_CLKOUT,
	inout wire[7:0] HPS_USB_DATA,
	input wire HPS_USB_DIR,
	input wire HPS_USB_NXT,
	output wire HPS_USB_STP
);


simple u0 (
	.clk_clk                           (<connected-to-clk_clk>),                           //                        clk.clk
	.hps_0_h2f_reset_reset_n           (<connected-to-hps_0_h2f_reset_reset_n>),           //            hps_0_h2f_reset.reset_n
	.hps_io_hps_io_emac0_inst_TX_CLK   (<connected-to-hps_io_hps_io_emac0_inst_TX_CLK>),   //                     hps_io.hps_io_emac0_inst_TX_CLK
	.hps_io_hps_io_emac0_inst_TXD0     (<connected-to-hps_io_hps_io_emac0_inst_TXD0>),     //                           .hps_io_emac0_inst_TXD0
	.hps_io_hps_io_emac0_inst_TXD1     (<connected-to-hps_io_hps_io_emac0_inst_TXD1>),     //                           .hps_io_emac0_inst_TXD1
	.hps_io_hps_io_emac0_inst_TXD2     (<connected-to-hps_io_hps_io_emac0_inst_TXD2>),     //                           .hps_io_emac0_inst_TXD2
	.hps_io_hps_io_emac0_inst_TXD3     (<connected-to-hps_io_hps_io_emac0_inst_TXD3>),     //                           .hps_io_emac0_inst_TXD3
	.hps_io_hps_io_emac0_inst_RXD0     (<connected-to-hps_io_hps_io_emac0_inst_RXD0>),     //                           .hps_io_emac0_inst_RXD0
	.hps_io_hps_io_emac0_inst_MDIO     (<connected-to-hps_io_hps_io_emac0_inst_MDIO>),     //                           .hps_io_emac0_inst_MDIO
	.hps_io_hps_io_emac0_inst_MDC      (<connected-to-hps_io_hps_io_emac0_inst_MDC>),      //                           .hps_io_emac0_inst_MDC
	.hps_io_hps_io_emac0_inst_RX_CTL   (<connected-to-hps_io_hps_io_emac0_inst_RX_CTL>),   //                           .hps_io_emac0_inst_RX_CTL
	.hps_io_hps_io_emac0_inst_TX_CTL   (<connected-to-hps_io_hps_io_emac0_inst_TX_CTL>),   //                           .hps_io_emac0_inst_TX_CTL
	.hps_io_hps_io_emac0_inst_RX_CLK   (<connected-to-hps_io_hps_io_emac0_inst_RX_CLK>),   //                           .hps_io_emac0_inst_RX_CLK
	.hps_io_hps_io_emac0_inst_RXD1     (<connected-to-hps_io_hps_io_emac0_inst_RXD1>),     //                           .hps_io_emac0_inst_RXD1
	.hps_io_hps_io_emac0_inst_RXD2     (<connected-to-hps_io_hps_io_emac0_inst_RXD2>),     //                           .hps_io_emac0_inst_RXD2
	.hps_io_hps_io_emac0_inst_RXD3     (<connected-to-hps_io_hps_io_emac0_inst_RXD3>),     //                           .hps_io_emac0_inst_RXD3
	.hps_io_hps_io_qspi_inst_SS3       (<connected-to-hps_io_hps_io_qspi_inst_SS3>),       //                           .hps_io_qspi_inst_SS3
	.hps_io_hps_io_qspi_inst_SS2       (<connected-to-hps_io_hps_io_qspi_inst_SS2>),       //                           .hps_io_qspi_inst_SS2
	.hps_io_hps_io_qspi_inst_SS1       (<connected-to-hps_io_hps_io_qspi_inst_SS1>),       //                           .hps_io_qspi_inst_SS1
	.hps_io_hps_io_qspi_inst_IO0       (<connected-to-hps_io_hps_io_qspi_inst_IO0>),       //                           .hps_io_qspi_inst_IO0
	.hps_io_hps_io_qspi_inst_IO1       (<connected-to-hps_io_hps_io_qspi_inst_IO1>),       //                           .hps_io_qspi_inst_IO1
	.hps_io_hps_io_qspi_inst_IO2       (<connected-to-hps_io_hps_io_qspi_inst_IO2>),       //                           .hps_io_qspi_inst_IO2
	.hps_io_hps_io_qspi_inst_IO3       (<connected-to-hps_io_hps_io_qspi_inst_IO3>),       //                           .hps_io_qspi_inst_IO3
	.hps_io_hps_io_qspi_inst_SS0       (<connected-to-hps_io_hps_io_qspi_inst_SS0>),       //                           .hps_io_qspi_inst_SS0
	.hps_io_hps_io_qspi_inst_CLK       (<connected-to-hps_io_hps_io_qspi_inst_CLK>),       //                           .hps_io_qspi_inst_CLK
	.hps_io_hps_io_sdio_inst_CMD       (<connected-to-hps_io_hps_io_sdio_inst_CMD>),       //                           .hps_io_sdio_inst_CMD
	.hps_io_hps_io_sdio_inst_D0        (<connected-to-hps_io_hps_io_sdio_inst_D0>),        //                           .hps_io_sdio_inst_D0
	.hps_io_hps_io_sdio_inst_D1        (<connected-to-hps_io_hps_io_sdio_inst_D1>),        //                           .hps_io_sdio_inst_D1
	.hps_io_hps_io_sdio_inst_CLK       (<connected-to-hps_io_hps_io_sdio_inst_CLK>),       //                           .hps_io_sdio_inst_CLK
	.hps_io_hps_io_sdio_inst_D2        (<connected-to-hps_io_hps_io_sdio_inst_D2>),        //                           .hps_io_sdio_inst_D2
	.hps_io_hps_io_sdio_inst_D3        (<connected-to-hps_io_hps_io_sdio_inst_D3>),        //                           .hps_io_sdio_inst_D3
	.hps_io_hps_io_spis0_inst_CLK      (<connected-to-hps_io_hps_io_spis0_inst_CLK>),      //                           .hps_io_spis0_inst_CLK
	.hps_io_hps_io_spis0_inst_MOSI     (<connected-to-hps_io_hps_io_spis0_inst_MOSI>),     //                           .hps_io_spis0_inst_MOSI
	.hps_io_hps_io_spis0_inst_MISO     (<connected-to-hps_io_hps_io_spis0_inst_MISO>),     //                           .hps_io_spis0_inst_MISO
	.hps_io_hps_io_spis0_inst_SS0      (<connected-to-hps_io_hps_io_spis0_inst_SS0>),      //                           .hps_io_spis0_inst_SS0
	.hps_io_hps_io_uart0_inst_RX       (<connected-to-hps_io_hps_io_uart0_inst_RX>),       //                           .hps_io_uart0_inst_RX
	.hps_io_hps_io_uart0_inst_TX       (<connected-to-hps_io_hps_io_uart0_inst_TX>),       //                           .hps_io_uart0_inst_TX
	.hps_io_hps_io_uart0_inst_CTS      (<connected-to-hps_io_hps_io_uart0_inst_CTS>),      //                           .hps_io_uart0_inst_CTS
	.hps_io_hps_io_uart0_inst_RTS      (<connected-to-hps_io_hps_io_uart0_inst_RTS>),      //                           .hps_io_uart0_inst_RTS
	.hps_io_hps_io_i2c0_inst_SDA       (<connected-to-hps_io_hps_io_i2c0_inst_SDA>),       //                           .hps_io_i2c0_inst_SDA
	.hps_io_hps_io_i2c0_inst_SCL       (<connected-to-hps_io_hps_io_i2c0_inst_SCL>),       //                           .hps_io_i2c0_inst_SCL
	.hps_io_hps_io_i2c3_inst_SDA       (<connected-to-hps_io_hps_io_i2c3_inst_SDA>),       //                           .hps_io_i2c3_inst_SDA
	.hps_io_hps_io_i2c3_inst_SCL       (<connected-to-hps_io_hps_io_i2c3_inst_SCL>),       //                           .hps_io_i2c3_inst_SCL
	.led_external_connection_export    (<connected-to-led_external_connection_export>),    //    led_external_connection.export
	.memory_mem_a                      (<connected-to-memory_mem_a>),                      //                     memory.mem_a
	.memory_mem_ba                     (<connected-to-memory_mem_ba>),                     //                           .mem_ba
	.memory_mem_ck                     (<connected-to-memory_mem_ck>),                     //                           .mem_ck
	.memory_mem_ck_n                   (<connected-to-memory_mem_ck_n>),                   //                           .mem_ck_n
	.memory_mem_cke                    (<connected-to-memory_mem_cke>),                    //                           .mem_cke
	.memory_mem_cs_n                   (<connected-to-memory_mem_cs_n>),                   //                           .mem_cs_n
	.memory_mem_ras_n                  (<connected-to-memory_mem_ras_n>),                  //                           .mem_ras_n
	.memory_mem_cas_n                  (<connected-to-memory_mem_cas_n>),                  //                           .mem_cas_n
	.memory_mem_we_n                   (<connected-to-memory_mem_we_n>),                   //                           .mem_we_n
	.memory_mem_reset_n                (<connected-to-memory_mem_reset_n>),                //                           .mem_reset_n
	.memory_mem_dq                     (<connected-to-memory_mem_dq>),                     //                           .mem_dq
	.memory_mem_dqs                    (<connected-to-memory_mem_dqs>),                    //                           .mem_dqs
	.memory_mem_dqs_n                  (<connected-to-memory_mem_dqs_n>),                  //                           .mem_dqs_n
	.memory_mem_odt                    (<connected-to-memory_mem_odt>),                    //                           .mem_odt
	.memory_mem_dm                     (<connected-to-memory_mem_dm>),                     //                           .mem_dm
	.memory_oct_rzqin                  (<connected-to-memory_oct_rzqin>),                  //                           .oct_rzqin
	.reset_reset_n                     (1'b1),                     //                      reset.reset_n
	.switch_external_connection_export (<connected-to-switch_external_connection_export>)  // switch_external_connection.export
);


endmodule