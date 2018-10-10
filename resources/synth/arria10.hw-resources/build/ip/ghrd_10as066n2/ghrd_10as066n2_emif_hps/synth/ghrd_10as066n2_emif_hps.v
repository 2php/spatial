// ghrd_10as066n2_emif_hps.v

// Generated using ACDS version 17.1 240

`timescale 1 ps / 1 ps
module ghrd_10as066n2_emif_hps (
		input  wire          global_reset_n, // global_reset_reset_sink.reset_n
		input  wire [4095:0] hps_to_emif,    //    hps_emif_conduit_end.hps_to_emif
		output wire [4095:0] emif_to_hps,    //                        .emif_to_hps
		input  wire [1:0]    hps_to_emif_gp, //                        .gp_to_emif
		output wire [0:0]    emif_to_hps_gp, //                        .emif_to_gp
		output wire [0:0]    mem_ck,         //         mem_conduit_end.mem_ck
		output wire [0:0]    mem_ck_n,       //                        .mem_ck_n
		output wire [16:0]   mem_a,          //                        .mem_a
		output wire [0:0]    mem_act_n,      //                        .mem_act_n
		output wire [1:0]    mem_ba,         //                        .mem_ba
		output wire [0:0]    mem_bg,         //                        .mem_bg
		output wire [0:0]    mem_cke,        //                        .mem_cke
		output wire [0:0]    mem_cs_n,       //                        .mem_cs_n
		output wire [0:0]    mem_odt,        //                        .mem_odt
		output wire [0:0]    mem_reset_n,    //                        .mem_reset_n
		output wire [0:0]    mem_par,        //                        .mem_par
		input  wire [0:0]    mem_alert_n,    //                        .mem_alert_n
		inout  wire [3:0]    mem_dqs,        //                        .mem_dqs
		inout  wire [3:0]    mem_dqs_n,      //                        .mem_dqs_n
		inout  wire [31:0]   mem_dq,         //                        .mem_dq
		inout  wire [3:0]    mem_dbi_n,      //                        .mem_dbi_n
		input  wire          oct_rzqin,      //         oct_conduit_end.oct_rzqin
		input  wire          pll_ref_clk     //  pll_ref_clk_clock_sink.clk
	);

	ghrd_10as066n2_emif_hps_altera_emif_a10_hps_171_or5co3i emif_hps (
		.global_reset_n (global_reset_n), //   input,     width = 1, global_reset_reset_sink.reset_n
		.hps_to_emif    (hps_to_emif),    //   input,  width = 4096,    hps_emif_conduit_end.hps_to_emif
		.emif_to_hps    (emif_to_hps),    //  output,  width = 4096,                        .emif_to_hps
		.hps_to_emif_gp (hps_to_emif_gp), //   input,     width = 2,                        .gp_to_emif
		.emif_to_hps_gp (emif_to_hps_gp), //  output,     width = 1,                        .emif_to_gp
		.mem_ck         (mem_ck),         //  output,     width = 1,         mem_conduit_end.mem_ck
		.mem_ck_n       (mem_ck_n),       //  output,     width = 1,                        .mem_ck_n
		.mem_a          (mem_a),          //  output,    width = 17,                        .mem_a
		.mem_act_n      (mem_act_n),      //  output,     width = 1,                        .mem_act_n
		.mem_ba         (mem_ba),         //  output,     width = 2,                        .mem_ba
		.mem_bg         (mem_bg),         //  output,     width = 1,                        .mem_bg
		.mem_cke        (mem_cke),        //  output,     width = 1,                        .mem_cke
		.mem_cs_n       (mem_cs_n),       //  output,     width = 1,                        .mem_cs_n
		.mem_odt        (mem_odt),        //  output,     width = 1,                        .mem_odt
		.mem_reset_n    (mem_reset_n),    //  output,     width = 1,                        .mem_reset_n
		.mem_par        (mem_par),        //  output,     width = 1,                        .mem_par
		.mem_alert_n    (mem_alert_n),    //   input,     width = 1,                        .mem_alert_n
		.mem_dqs        (mem_dqs),        //   inout,     width = 4,                        .mem_dqs
		.mem_dqs_n      (mem_dqs_n),      //   inout,     width = 4,                        .mem_dqs_n
		.mem_dq         (mem_dq),         //   inout,    width = 32,                        .mem_dq
		.mem_dbi_n      (mem_dbi_n),      //   inout,     width = 4,                        .mem_dbi_n
		.oct_rzqin      (oct_rzqin),      //   input,     width = 1,         oct_conduit_end.oct_rzqin
		.pll_ref_clk    (pll_ref_clk)     //   input,     width = 1,  pll_ref_clk_clock_sink.clk
	);

endmodule