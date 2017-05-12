function S = simple_stats(N)
row_mean = mean(N, 2);
row_median = median(N,2);
row_min = min(N, [], 2);
row_max = max(N, [], 2);
S = [row_mean, row_median, row_min, row_max];
end