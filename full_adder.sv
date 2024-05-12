module full_adder(
    input reg [3:0] a, b,
	 input reg cin,
    output reg [3:0] sum,
    output reg cout
);

reg [3:0] c;
assign c[0] = cin;

unit_adder adder_Z(
            a[0],
            b[0],
            c[0],
            sum[0],
            c[1]
        );
		  
unit_adder adder_O(
            a[1],
            b[1],
            c[1],
            sum[1],
            c[2]
        );
		  
unit_adder adder_Tw(
            a[2],
            b[2],
            c[2],
            sum[2],
            c[3]
        );
		  
unit_adder adder_Th(
            a[3],
            b[3],
            c[3],
            sum[3],
            cout
        );

endmodule