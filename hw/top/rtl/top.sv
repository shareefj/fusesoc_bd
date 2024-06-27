module top (
    inout logic [14:0] DDR_addr,
    inout logic [2:0] DDR_ba,
    inout logic DDR_cas_n,
    inout logic DDR_ck_n,
    inout logic DDR_ck_p,
    inout logic DDR_cke,
    inout logic DDR_cs_n,
    inout logic [3:0] DDR_dm,
    inout logic [31:0] DDR_dq,
    inout logic [3:0] DDR_dqs_n,
    inout logic [3:0] DDR_dqs_p,
    inout logic DDR_odt,
    inout logic DDR_ras_n,
    inout logic DDR_reset_n,
    inout logic DDR_we_n,
    inout logic FIXED_IO_ddr_vrn,
    inout logic FIXED_IO_ddr_vrp,
    inout logic [53:0] FIXED_IO_mio,
    inout logic FIXED_IO_ps_clk,
    inout logic FIXED_IO_ps_porb,
    inout logic FIXED_IO_ps_srstb
);


  logic [31:0] paddr;
  logic penable;
  logic [31:0] prdata;
  logic pready;
  logic psel;
  logic pslverr;
  logic [31:0] pwdata;
  logic pwrite;
  logic pclk;

  ps7 ps7_i (
      .DDR_addr(DDR_addr),
      .DDR_ba(DDR_ba),
      .DDR_cas_n(DDR_cas_n),
      .DDR_ck_n(DDR_ck_n),
      .DDR_ck_p(DDR_ck_p),
      .DDR_cke(DDR_cke),
      .DDR_cs_n(DDR_cs_n),
      .DDR_dm(DDR_dm),
      .DDR_dq(DDR_dq),
      .DDR_dqs_n(DDR_dqs_n),
      .DDR_dqs_p(DDR_dqs_p),
      .DDR_odt(DDR_odt),
      .DDR_ras_n(DDR_ras_n),
      .DDR_reset_n(DDR_reset_n),
      .DDR_we_n(DDR_we_n),
      .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
      .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
      .FIXED_IO_mio(FIXED_IO_mio),
      .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
      .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
      .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
      .m_apb_paddr(paddr),
      .m_apb_penable(penable),
      .m_apb_prdata(prdata),
      .m_apb_pready(pready),
      .m_apb_psel(psel),
      .m_apb_pslverr(pslverr),
      .m_apb_pwdata(pwdata),
      .m_apb_pwrite(pwrite),
      .pclk(pclk)
  );

  // Tie offs
  assign pready = '1;
  assign pslverr = '0;

endmodule
