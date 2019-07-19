//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Jul 18 21:53:11 2019
//Host        : ukaea-fpga running 64-bit KDE neon User Edition 5.16
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (CLK_DDR3_200MHz_clk_n,
    CLK_DDR3_200MHz_clk_p,
    CLK_PCIe_100MHz_clk_n,
    CLK_PCIe_100MHz_clk_p,
    DDR3_SDRAM_addr,
    DDR3_SDRAM_ba,
    DDR3_SDRAM_cas_n,
    DDR3_SDRAM_ck_n,
    DDR3_SDRAM_ck_p,
    DDR3_SDRAM_cke,
    DDR3_SDRAM_cs_n,
    DDR3_SDRAM_dm,
    DDR3_SDRAM_dq,
    DDR3_SDRAM_dqs_n,
    DDR3_SDRAM_dqs_p,
    DDR3_SDRAM_odt,
    DDR3_SDRAM_ras_n,
    DDR3_SDRAM_reset_n,
    DDR3_SDRAM_we_n,
    PCI_PERSTN,
    SCF_cpld_14_oe,
    SCF_cpld_16_sda,
    SCF_cpld_1_scl,
    pcie_7x_mgt_rxn,
    pcie_7x_mgt_rxp,
    pcie_7x_mgt_txn,
    pcie_7x_mgt_txp,
    spi_rtl_io0_io,
    spi_rtl_io1_io,
    spi_rtl_io2_io,
    spi_rtl_io3_io,
    spi_rtl_ss_io);
  input CLK_DDR3_200MHz_clk_n;
  input CLK_DDR3_200MHz_clk_p;
  input [0:0]CLK_PCIe_100MHz_clk_n;
  input [0:0]CLK_PCIe_100MHz_clk_p;
  output [14:0]DDR3_SDRAM_addr;
  output [2:0]DDR3_SDRAM_ba;
  output DDR3_SDRAM_cas_n;
  output [0:0]DDR3_SDRAM_ck_n;
  output [0:0]DDR3_SDRAM_ck_p;
  output [0:0]DDR3_SDRAM_cke;
  output [0:0]DDR3_SDRAM_cs_n;
  output [7:0]DDR3_SDRAM_dm;
  inout [63:0]DDR3_SDRAM_dq;
  inout [7:0]DDR3_SDRAM_dqs_n;
  inout [7:0]DDR3_SDRAM_dqs_p;
  output [0:0]DDR3_SDRAM_odt;
  output DDR3_SDRAM_ras_n;
  output DDR3_SDRAM_reset_n;
  output DDR3_SDRAM_we_n;
  input PCI_PERSTN;
  output SCF_cpld_14_oe;
  input SCF_cpld_16_sda;
  output SCF_cpld_1_scl;
  input [3:0]pcie_7x_mgt_rxn;
  input [3:0]pcie_7x_mgt_rxp;
  output [3:0]pcie_7x_mgt_txn;
  output [3:0]pcie_7x_mgt_txp;
  inout spi_rtl_io0_io;
  inout spi_rtl_io1_io;
  inout spi_rtl_io2_io;
  inout spi_rtl_io3_io;
  inout [0:0]spi_rtl_ss_io;

  wire CLK_DDR3_200MHz_clk_n;
  wire CLK_DDR3_200MHz_clk_p;
  wire [0:0]CLK_PCIe_100MHz_clk_n;
  wire [0:0]CLK_PCIe_100MHz_clk_p;
  wire [14:0]DDR3_SDRAM_addr;
  wire [2:0]DDR3_SDRAM_ba;
  wire DDR3_SDRAM_cas_n;
  wire [0:0]DDR3_SDRAM_ck_n;
  wire [0:0]DDR3_SDRAM_ck_p;
  wire [0:0]DDR3_SDRAM_cke;
  wire [0:0]DDR3_SDRAM_cs_n;
  wire [7:0]DDR3_SDRAM_dm;
  wire [63:0]DDR3_SDRAM_dq;
  wire [7:0]DDR3_SDRAM_dqs_n;
  wire [7:0]DDR3_SDRAM_dqs_p;
  wire [0:0]DDR3_SDRAM_odt;
  wire DDR3_SDRAM_ras_n;
  wire DDR3_SDRAM_reset_n;
  wire DDR3_SDRAM_we_n;
  wire PCI_PERSTN;
  wire SCF_cpld_14_oe;
  wire SCF_cpld_16_sda;
  wire SCF_cpld_1_scl;
  wire [3:0]pcie_7x_mgt_rxn;
  wire [3:0]pcie_7x_mgt_rxp;
  wire [3:0]pcie_7x_mgt_txn;
  wire [3:0]pcie_7x_mgt_txp;
  wire spi_rtl_io0_i;
  wire spi_rtl_io0_io;
  wire spi_rtl_io0_o;
  wire spi_rtl_io0_t;
  wire spi_rtl_io1_i;
  wire spi_rtl_io1_io;
  wire spi_rtl_io1_o;
  wire spi_rtl_io1_t;
  wire spi_rtl_io2_i;
  wire spi_rtl_io2_io;
  wire spi_rtl_io2_o;
  wire spi_rtl_io2_t;
  wire spi_rtl_io3_i;
  wire spi_rtl_io3_io;
  wire spi_rtl_io3_o;
  wire spi_rtl_io3_t;
  wire [0:0]spi_rtl_ss_i_0;
  wire [0:0]spi_rtl_ss_io_0;
  wire [0:0]spi_rtl_ss_o_0;
  wire spi_rtl_ss_t;

  IOBUF spi_rtl_io0_iobuf
       (.I(spi_rtl_io0_o),
        .IO(spi_rtl_io0_io),
        .O(spi_rtl_io0_i),
        .T(spi_rtl_io0_t));
  IOBUF spi_rtl_io1_iobuf
       (.I(spi_rtl_io1_o),
        .IO(spi_rtl_io1_io),
        .O(spi_rtl_io1_i),
        .T(spi_rtl_io1_t));
  IOBUF spi_rtl_io2_iobuf
       (.I(spi_rtl_io2_o),
        .IO(spi_rtl_io2_io),
        .O(spi_rtl_io2_i),
        .T(spi_rtl_io2_t));
  IOBUF spi_rtl_io3_iobuf
       (.I(spi_rtl_io3_o),
        .IO(spi_rtl_io3_io),
        .O(spi_rtl_io3_i),
        .T(spi_rtl_io3_t));
  IOBUF spi_rtl_ss_iobuf_0
       (.I(spi_rtl_ss_o_0),
        .IO(spi_rtl_ss_io[0]),
        .O(spi_rtl_ss_i_0),
        .T(spi_rtl_ss_t));
  system system_i
       (.CLK_DDR3_200MHz_clk_n(CLK_DDR3_200MHz_clk_n),
        .CLK_DDR3_200MHz_clk_p(CLK_DDR3_200MHz_clk_p),
        .CLK_PCIe_100MHz_clk_n(CLK_PCIe_100MHz_clk_n),
        .CLK_PCIe_100MHz_clk_p(CLK_PCIe_100MHz_clk_p),
        .DDR3_SDRAM_addr(DDR3_SDRAM_addr),
        .DDR3_SDRAM_ba(DDR3_SDRAM_ba),
        .DDR3_SDRAM_cas_n(DDR3_SDRAM_cas_n),
        .DDR3_SDRAM_ck_n(DDR3_SDRAM_ck_n),
        .DDR3_SDRAM_ck_p(DDR3_SDRAM_ck_p),
        .DDR3_SDRAM_cke(DDR3_SDRAM_cke),
        .DDR3_SDRAM_cs_n(DDR3_SDRAM_cs_n),
        .DDR3_SDRAM_dm(DDR3_SDRAM_dm),
        .DDR3_SDRAM_dq(DDR3_SDRAM_dq),
        .DDR3_SDRAM_dqs_n(DDR3_SDRAM_dqs_n),
        .DDR3_SDRAM_dqs_p(DDR3_SDRAM_dqs_p),
        .DDR3_SDRAM_odt(DDR3_SDRAM_odt),
        .DDR3_SDRAM_ras_n(DDR3_SDRAM_ras_n),
        .DDR3_SDRAM_reset_n(DDR3_SDRAM_reset_n),
        .DDR3_SDRAM_we_n(DDR3_SDRAM_we_n),
        .PCI_PERSTN(PCI_PERSTN),
        .SCF_cpld_14_oe(SCF_cpld_14_oe),
        .SCF_cpld_16_sda(SCF_cpld_16_sda),
        .SCF_cpld_1_scl(SCF_cpld_1_scl),
        .pcie_7x_mgt_rxn(pcie_7x_mgt_rxn),
        .pcie_7x_mgt_rxp(pcie_7x_mgt_rxp),
        .pcie_7x_mgt_txn(pcie_7x_mgt_txn),
        .pcie_7x_mgt_txp(pcie_7x_mgt_txp),
        .spi_rtl_io0_i(spi_rtl_io0_i),
        .spi_rtl_io0_o(spi_rtl_io0_o),
        .spi_rtl_io0_t(spi_rtl_io0_t),
        .spi_rtl_io1_i(spi_rtl_io1_i),
        .spi_rtl_io1_o(spi_rtl_io1_o),
        .spi_rtl_io1_t(spi_rtl_io1_t),
        .spi_rtl_io2_i(spi_rtl_io2_i),
        .spi_rtl_io2_o(spi_rtl_io2_o),
        .spi_rtl_io2_t(spi_rtl_io2_t),
        .spi_rtl_io3_i(spi_rtl_io3_i),
        .spi_rtl_io3_o(spi_rtl_io3_o),
        .spi_rtl_io3_t(spi_rtl_io3_t),
        .spi_rtl_ss_i(spi_rtl_ss_i_0),
        .spi_rtl_ss_o(spi_rtl_ss_o_0),
        .spi_rtl_ss_t(spi_rtl_ss_t));
endmodule
