function valid = is_palindrome(num)
digits = get_digits(num);
valid = true;

for i = 1:(size(digits, 2)/2)
    valid = valid & (digits(i) == digits(end-i+1));
end

end