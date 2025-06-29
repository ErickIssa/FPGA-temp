module seg7(a, b, c, d, s0, s1, s2, s3, s4, s5, s6);
    input a, b, c, d;
    output s0, s1, s2, s3, s4, s5, s6;

    wire a_n, b_n, c_n, d_n;
    assign a_n = ~a;
    assign b_n = ~b;
    assign c_n = ~c;
    assign d_n = ~d;

    assign s0 = (b_n & d_n) | (a_n & c) | (b & c) | (a & d_n) | (a_n & b & d) | (a & b_n & c_n);
    assign s1 = (a_n & b_n) | (b_n & d_n) | (a_n & c_n & d_n) | (a_n & c & d) | (a & c_n & d);
    assign s2 = (a_n & c_n) | (a_n & d) | (c_n & d) | (a_n & b) | (a & b_n);
    assign s3 = (a_n & b_n & d_n) | (b_n & c & d) | (b & c_n & d) | (b & c & d_n) | (a & c_n & d_n);
    assign s4 = (b_n & d_n) | (c & d_n) | (a & c) | (a & b);
    assign s5 = (c_n & d_n) | (a_n & b) | (b & c) | (a & b_n);
    assign s6 = (b_n & c) | (c & d_n) | (a & b_n) | (a & d) | (a_n & b & c_n);
endmodule