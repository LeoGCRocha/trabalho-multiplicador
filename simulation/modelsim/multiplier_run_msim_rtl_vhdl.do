transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier_pkg.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/bc.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/registrador_r.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/registrador.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/mux2para1.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/igualazero.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/somadorsubtrator.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/bo.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier.vhd}

