transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/somadorsubtrator.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/registrador.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/rbitshift.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/mux2para1.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/multiplier2_pkg.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/igualazero.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/igualaum.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/bo.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/bc.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier2/multiplier2.vhd}

