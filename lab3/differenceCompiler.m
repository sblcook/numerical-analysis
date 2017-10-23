function [differences] = differenceCompiler()

[s1, d1] = sums(10);
[s2, d2] = sums(100);
[s3, d3] = sums(1000);
[s4, d4] = sums(10000);
[s5, d5] = sums(100000);
[s6, d6] = sums(1000000);
[s7, d7] = sums(10000000);

differences = [s1, s2, s3, s4, s5, s6, s7;
               d1, d2, d3, d4, d5, d6, d7];

end