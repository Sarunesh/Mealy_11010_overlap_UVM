class mealy_overlap_11010_env extends uvm_env;
	// Factory registration
	`uvm_component_utils(mealy_overlap_11010_env)

	// Constructor
	`NEW_COMPONENT

	// Properties
	mealy_overlap_11010_agent agent;
	mealy_overlap_11010_sbd sbd;

	// build_phase
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		agent	= mealy_overlap_11010_agent::type_id::create("agent",this);
		sbd		= mealy_overlap_11010_sbd::type_id::create("sbd",this);
		`uvm_info("MEALY_ENV","Inside the build_phase of mealy_overlap_11010_env", UVM_HIGH)
	endfunction

	// connect_phase
	function void connect_phase(uvm_phase phase);
		agent.mon.a_port.connect(sbd.a_imp);
		`uvm_info("MEALY_ENV","Inside the connect_phase of mealy_overlap_11010_env", UVM_HIGH)
	endfunction
endclass
