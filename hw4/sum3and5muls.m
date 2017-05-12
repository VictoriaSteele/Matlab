function total = sum3and5muls(n)
threes = 3:3:n;
fives = 5:5:n;
total = sum(sum(union(threes, fives)));
end


