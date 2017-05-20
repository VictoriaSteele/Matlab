function sum = spiral_diag_sum(n)
val = 1;
sum = 1;
for i = 2:2:n
    for j = 1:4
        val = val + i;
        sum = sum + val;
    end
end
end