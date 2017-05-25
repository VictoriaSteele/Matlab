function digits = get_digits(num)
digits = mod(floor(num ./ 10 .^ (floor(log10(num)):-1:0)), 10);
end