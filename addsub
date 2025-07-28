module add_sub(
    input  a,
    input  b,
    output y,
    output y1,
    output y2
);
    assign y = a&b;
    assign y1 = a|b;
    assign y2= ~a;
endmodule

module testbench;
    reg a, b;
    wire y, y1,y2;

    add_sub uut (
        .a(a),
        .b(b),
        .y(y),
        .y1(y1),
        .y2(y2)
    );

    initial begin
        $monitor("a=%b, b=%b, y=%b, y1=%b,y2=%b", a, b, y, y1,y2);
        a = 1'b0; b = 1'b1; #10;
        $finish;
    end
endmodule
