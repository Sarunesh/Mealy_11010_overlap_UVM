`define NEW_COMPONENT \
	function new(string name="", uvm_component parent=null); \
		super.new(name,parent); \
	endfunction

`define NEW_OBJECT \
	function new(string name=""); \
		super.new(name); \
	endfunction
