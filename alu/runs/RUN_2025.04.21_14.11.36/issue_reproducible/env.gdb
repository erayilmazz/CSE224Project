set env CELL_PAD_EXCLUDE sky130_fd_sc_hd__tap* sky130_fd_sc_hd__decap* sky130_ef_sc_hd__decap* sky130_fd_sc_hd__fill*
set env CLOCK_PERIOD 10
set env CLOCK_PORT 
set env CLOCK_WIRE_RC_LAYER met5
set env CURRENT_DEF ./tmp/cts/13-alu.resized.def
set env CURRENT_NETLIST ./tmp/cts/13-alu.resized.nl.v
set env CURRENT_ODB ./tmp/cts/13-alu.resized.odb
set env CURRENT_POWERED_NETLIST ./tmp/cts/13-alu.resized.pnl.v
set env DATA_WIRE_RC_LAYER met2
set env DESIGN_NAME alu
set env DIODE_CELL sky130_fd_sc_hd__diode_2
set env DIODE_PADDING 2
set env DONT_USE_CELLS sky130_fd_sc_hd__a2111oi_0 sky130_fd_sc_hd__a21boi_0 sky130_fd_sc_hd__and2_0 sky130_fd_sc_hd__buf_16 sky130_fd_sc_hd__clkdlybuf4s15_1 sky130_fd_sc_hd__clkdlybuf4s18_1 sky130_fd_sc_hd__fa_4 sky130_fd_sc_hd__lpflow_bleeder_1 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 sky130_fd_sc_hd__lpflow_clkbufkapwr_16 sky130_fd_sc_hd__lpflow_clkbufkapwr_2 sky130_fd_sc_hd__lpflow_clkbufkapwr_4 sky130_fd_sc_hd__lpflow_clkbufkapwr_8 sky130_fd_sc_hd__lpflow_clkinvkapwr_1 sky130_fd_sc_hd__lpflow_clkinvkapwr_16 sky130_fd_sc_hd__lpflow_clkinvkapwr_2 sky130_fd_sc_hd__lpflow_clkinvkapwr_4 sky130_fd_sc_hd__lpflow_clkinvkapwr_8 sky130_fd_sc_hd__lpflow_decapkapwr_12 sky130_fd_sc_hd__lpflow_decapkapwr_3 sky130_fd_sc_hd__lpflow_decapkapwr_4 sky130_fd_sc_hd__lpflow_decapkapwr_6 sky130_fd_sc_hd__lpflow_decapkapwr_8 sky130_fd_sc_hd__lpflow_inputiso0n_1 sky130_fd_sc_hd__lpflow_inputiso0p_1 sky130_fd_sc_hd__lpflow_inputiso1n_1 sky130_fd_sc_hd__lpflow_inputiso1p_1 sky130_fd_sc_hd__lpflow_inputisolatch_1 sky130_fd_sc_hd__lpflow_isobufsrc_1 sky130_fd_sc_hd__lpflow_isobufsrc_16 sky130_fd_sc_hd__lpflow_isobufsrc_2 sky130_fd_sc_hd__lpflow_isobufsrc_4 sky130_fd_sc_hd__lpflow_isobufsrc_8 sky130_fd_sc_hd__lpflow_isobufsrckapwr_16 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_1 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_2 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_4 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_4 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_1 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_2 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_4 sky130_fd_sc_hd__mux4_4 sky130_fd_sc_hd__o21ai_0 sky130_fd_sc_hd__o311ai_0 sky130_fd_sc_hd__or2_0 sky130_fd_sc_hd__probe_p_8 sky130_fd_sc_hd__probec_p_8 sky130_fd_sc_hd__xor3_1 sky130_fd_sc_hd__xor3_2 sky130_fd_sc_hd__xor3_4 sky130_fd_sc_hd__xnor3_1 sky130_fd_sc_hd__xnor3_2 sky130_fd_sc_hd__xnor3_4
set env DPL_CELL_PADDING 0
set env FP_PDN_ENABLE_GLOBAL_CONNECTIONS 1
set env FP_PDN_ENABLE_MACROS_GRID 1
set env GLB_OPTIMIZE_MIRRORING 1
set env GLB_RESIZER_MAX_CAP_MARGIN 10
set env GLB_RESIZER_MAX_SLEW_MARGIN 10
set env GLB_RESIZER_MAX_WIRE_LENGTH 0
set env GND_NET VGND
set env GRT_ADJUSTMENT 0.3
set env GRT_ALLOW_CONGESTION 0
set env GRT_CONGESTION_REPORT_FILE ./tmp/routing/resizer-routing-design-congestion.rpt
set env GRT_LAYER_ADJUSTMENTS 0.99,0,0,0,0,0
set env GRT_OVERFLOW_ITERS 50
set env IO_PCT 0.2
set env LIB_TYPICAL pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
set env MAX_FANOUT_CONSTRAINT 10
set env MAX_TRANSITION_CONSTRAINT 0.75
set env MERGED_LEF ./tmp/merged.nom.lef
set env OUTPUT_CAP_LOAD 33.442
set env PACKAGED_SCRIPT_0 openlane/scripts/openroad/resizer_routing_design.tcl
set env PACKAGED_SCRIPT_1 openlane/scripts/openroad/common/io.tcl
set env PACKAGED_SCRIPT_2 openlane/scripts/openroad/common/resizer.tcl
set env PACKAGED_SCRIPT_3 openlane/scripts/openroad/common/set_routing_layers.tcl
set env PACKAGED_SCRIPT_4 openlane/scripts/openroad/common/set_layer_adjustments.tcl
set env PACKAGED_SCRIPT_5 openlane/scripts/openroad/common/set_rc.tcl
set env PACKAGED_SCRIPT_6 openlane/scripts/openroad/common/dpl_cell_pad.tcl
set env PACKAGED_SCRIPT_7 openlane/scripts/base.sdc
set env PACKAGED_SCRIPT_8 ./tmp/14-alu.sdc
set env PACKAGED_SCRIPT_9 openlane/scripts/openroad/common/set_global_connections.tcl
set env PNR_SDC_FILE openlane/scripts/base.sdc
set env PROCESS_CORNER nom
set env RSZ_DONT_TOUCH 
set env RSZ_DONT_TOUCH_RX \$^
set env RSZ_LIB pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
set env RSZ_LIB_FASTEST pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib
set env RSZ_LIB_SLOWEST pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
set env RSZ_MULTICORNER_LIB 1
set env RT_CLOCK_MIN_LAYER met3
set env RT_MAX_LAYER met5
set env RT_MIN_LAYER met1
set env SAVE_DEF ./tmp/14-alu.def
set env SAVE_NETLIST ./out.v
set env SAVE_ODB ./tmp/14-alu.odb
set env SAVE_POWERED_NETLIST ./tmp/14-alu.pnl.v
set env SAVE_SDC ./tmp/14-alu.sdc
set env SCRIPTS_DIR openlane/scripts
set env SIGNOFF_SDC_FILE openlane/scripts/base.sdc
set env STA_PRE_CTS 0
set env STD_CELL_GROUND_PINS VGND VNB
set env STD_CELL_POWER_PINS VPWR VPB
set env SYNTH_CLOCK_TRANSITION 0.15
set env SYNTH_CLOCK_UNCERTAINTY 0.25
set env SYNTH_DRIVING_CELL sky130_fd_sc_hd__inv_2
set env SYNTH_DRIVING_CELL_PIN Y
set env SYNTH_TIMING_DERATE 0.05
set env TECH_METAL_LAYERS li1 met1 met2 met3 met4 met5
set env VDD_NET VPWR
set env _PROPAGATE_ALL_CLOCKS 0