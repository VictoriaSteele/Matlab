function persum = peri_sum(A)
persum = sum(A(1,1:end)) ...
+ sum(A(end, 1:end)) ...
+ sum(A(2:end-1, 1)) ...
+ sum(A(2:end-1, end));
end