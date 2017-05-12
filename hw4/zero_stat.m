function per = zero_stat(N)
[m, n] = size(N);
per = 100 - sum(sum(N))/(m*n)*100;
end