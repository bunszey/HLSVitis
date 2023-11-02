# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXI_CPU {
in_r { 
	dir I
	width 8
	depth 307200
	mode ap_memory
	offset 524288
	offset_end 1048575
}
out_r { 
	dir O
	width 8
	depth 307200
	mode ap_memory
	offset 1048576
	offset_end 1572863
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict AXI_CPU $port_AXI_CPU


