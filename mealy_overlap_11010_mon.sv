class mealy_overlap_11010_mon extends uvm_monitor;
	// Factory registration
	`uvm_component_utils(mealy_overlap_11010_mon)

	// Port declaration
	uvm_analysis_port#(mealy_overlap_11010_tx) a_port;

	// Constructor
	`NEW_COMPONENT

	// Interface
	virtual mealy_overlap_11010_intf vif;

	// build_phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		a_port = new("a_port",this);
		`uvm_info("MEALY_MON","Inside the build_phase of mealy_overlap_11010_mon",UVM_HIGH)
		if(!uvm_config_db#(virtual mealy_overlap_11010_intf)::get(this,get_full_name(),"VIF",vif))
			`uvm_error("MEALY_MON","#### Error: Failed to read the interface")
	endfunction

	// run_phase
	task run_phase(uvm_phase phase);
		`uvm_info("MEALY_MON","Inside the run_phase of mealy_overlap_11010_mon",UVM_HIGH)
	endtask
endclass
