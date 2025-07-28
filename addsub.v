module add_sub(
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] y,
    output [7:0] y1
);
    assign y = a + b;
    assign y1 = a - b;
endmodule

module testbench;
    reg [3:0] a, b;
    wire [7:0] y, y1;

    add_sub uut (
        .a(a),
        .b(b),
        .y(y),
        .y1(y1)
    );

    initial begin
        $monitor("a=%d, b=%d, y=%d, y1=%d", a, b, y, y1);
        a = 4'd4; b = 4'd2; #10;
        $finish;
    end
endmodule
