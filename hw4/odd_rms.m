function x = odd_rms(nn)
nn_odd_ints_squared = (1:2:2*nn).^2;
x = sqrt(mean(nn_odd_ints_squared));
end