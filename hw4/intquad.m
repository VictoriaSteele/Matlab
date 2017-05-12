function Q = intquad(n, m)
all_ones = ones(n, m);
Q = [zeros(n, m), all_ones; all_ones*2, all_ones*2 + 1];
end