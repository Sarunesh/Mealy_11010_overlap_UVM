class mealy_overlap_11010_sub extends uvm_subscriber#(mealy_overlap_11010_tx);
	// Factory registration
	`uvm_component_utils(mealy_overlap_11010_sub)

	// Constructor
	`NEW_COMPONENT

	// run_phase
	task run_phase(uvm_phase phase);
		`uvm_info("MEALY_SUB","Inside the run_phase of mealy_overlap_11010_sub",UVM_HIGH)
	endtask

	// write method
	virtual function void write(mealy_overlap_11010_tx t);
	endfunction
endclass
