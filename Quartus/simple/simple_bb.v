
module simple (
	clk_clk,
	hps_0_h2f_reset_reset_n,
	led_external_connection_export,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	reset_reset_n,
	switch_external_connection_export,
	hps_io_hps_io_emac0_inst_TX_CLK,
	hps_io_hps_io_emac0_inst_TXD0,
	hps_io_hps_io_emac0_inst_TXD1,
	hps_io_hps_io_emac0_inst_TXD2,
	hps_io_hps_io_emac0_inst_TXD3,
	hps_io_hps_io_emac0_inst_RXD0,
	hps_io_hps_io_emac0_inst_MDIO,
	hps_io_hps_io_emac0_inst_MDC,
	hps_io_hps_io_emac0_inst_RX_CTL,
	hps_io_hps_io_emac0_inst_TX_CTL,
	hps_io_hps_io_emac0_inst_RX_CLK,
	hps_io_hps_io_emac0_inst_RXD1,
	hps_io_hps_io_emac0_inst_RXD2,
	hps_io_hps_io_emac0_inst_RXD3,
	hps_io_hps_io_qspi_inst_SS3,
	hps_io_hps_io_qspi_inst_SS2,
	hps_io_hps_io_qspi_inst_SS1,
	hps_io_hps_io_qspi_inst_IO0,
	hps_io_hps_io_qspi_inst_IO1,
	hps_io_hps_io_qspi_inst_IO2,
	hps_io_hps_io_qspi_inst_IO3,
	hps_io_hps_io_qspi_inst_SS0,
	hps_io_hps_io_qspi_inst_CLK,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
	hps_io_hps_io_spis0_inst_CLK,
	hps_io_hps_io_spis0_inst_MOSI,
	hps_io_hps_io_spis0_inst_MISO,
	hps_io_hps_io_spis0_inst_SS0,
	hps_io_hps_io_uart0_inst_RX,
	hps_io_hps_io_uart0_inst_TX,
	hps_io_hps_io_uart0_inst_CTS,
	hps_io_hps_io_uart0_inst_RTS,
	hps_io_hps_io_i2c0_inst_SDA,
	hps_io_hps_io_i2c0_inst_SCL,
	hps_io_hps_io_i2c3_inst_SDA,
	hps_io_hps_io_i2c3_inst_SCL);	

	input		clk_clk;
	output		hps_0_h2f_reset_reset_n;
	output	[9:0]	led_external_connection_export;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output		memory_mem_odt;
	output	[3:0]	memory_mem_dm;
	input		memory_oct_rzqin;
	input		reset_reset_n;
	input	[9:0]	switch_external_connection_export;
	output		hps_io_hps_io_emac0_inst_TX_CLK;
	output		hps_io_hps_io_emac0_inst_TXD0;
	output		hps_io_hps_io_emac0_inst_TXD1;
	output		hps_io_hps_io_emac0_inst_TXD2;
	output		hps_io_hps_io_emac0_inst_TXD3;
	input		hps_io_hps_io_emac0_inst_RXD0;
	inout		hps_io_hps_io_emac0_inst_MDIO;
	output		hps_io_hps_io_emac0_inst_MDC;
	input		hps_io_hps_io_emac0_inst_RX_CTL;
	output		hps_io_hps_io_emac0_inst_TX_CTL;
	input		hps_io_hps_io_emac0_inst_RX_CLK;
	input		hps_io_hps_io_emac0_inst_RXD1;
	input		hps_io_hps_io_emac0_inst_RXD2;
	input		hps_io_hps_io_emac0_inst_RXD3;
	output		hps_io_hps_io_qspi_inst_SS3;
	output		hps_io_hps_io_qspi_inst_SS2;
	output		hps_io_hps_io_qspi_inst_SS1;
	inout		hps_io_hps_io_qspi_inst_IO0;
	inout		hps_io_hps_io_qspi_inst_IO1;
	inout		hps_io_hps_io_qspi_inst_IO2;
	inout		hps_io_hps_io_qspi_inst_IO3;
	output		hps_io_hps_io_qspi_inst_SS0;
	output		hps_io_hps_io_qspi_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
	input		hps_io_hps_io_spis0_inst_CLK;
	input		hps_io_hps_io_spis0_inst_MOSI;
	output		hps_io_hps_io_spis0_inst_MISO;
	input		hps_io_hps_io_spis0_inst_SS0;
	input		hps_io_hps_io_uart0_inst_RX;
	output		hps_io_hps_io_uart0_inst_TX;
	input		hps_io_hps_io_uart0_inst_CTS;
	output		hps_io_hps_io_uart0_inst_RTS;
	inout		hps_io_hps_io_i2c0_inst_SDA;
	inout		hps_io_hps_io_i2c0_inst_SCL;
	inout		hps_io_hps_io_i2c3_inst_SDA;
	inout		hps_io_hps_io_i2c3_inst_SCL;
endmodule
