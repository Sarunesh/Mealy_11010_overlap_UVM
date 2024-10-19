module top;
	bit clk;
	bit rst;

	// Physical interface
	mealy_overlap_11010_intf pif(.clk(clk), .rst(rst));

	// DUT instantiation
	mealy_overlap_11010 dut(
							.clk		(pif.clk),
							.rst		(pif.rst),
							.data_in	(pif.data_in),
							.data_out	(pif.data_out)
							);

	initial uvm_config_db#(virtual mealy_overlap_11010_intf)::set(null,"*","VIF",pif);

	initial begin
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
	end

	initial run_test("base_test");
endmodule
