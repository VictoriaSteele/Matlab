function overall_income = income(rate, price)
%rate = products/hour
%price = income/product
overall_income = sum(rate.*price)*2*8*6;
end