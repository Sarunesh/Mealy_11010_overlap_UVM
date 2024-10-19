class mealy_overlap_11010_sbd extends uvm_scoreboard;
	// Factory registration
	`uvm_component_utils(mealy_overlap_11010_sbd)

	// Port declaration
	uvm_analysis_imp#(mealy_overlap_11010_tx,mealy_overlap_11010_sbd) a_imp;

	// Constructor
	`NEW_COMPONENT

	// build_phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		a_imp = new("a_imp",this);
		`uvm_info("MEALY_SBD","Inside the build_phase of mealy_overlap_11010_sbd",UVM_HIGH)
	endfunction

	// run_phase
	task run_phase(uvm_phase phase);
		`uvm_info("MEALY_SBD","Inside the run_phase of mealy_overlap_11010_sbd",UVM_HIGH)
	endtask

	// write method
	virtual function void write(mealy_overlap_11010_tx t);
	endfunction
endclass
