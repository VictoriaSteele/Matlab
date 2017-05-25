function fact = find_factors(start, min, num, max)
prod_a = start;
fact = zeros(1, 2);
while(prod_a >= min)
    if(mod(num, prod_a) == 0)
        prod_b = num / prod_a;
        if((prod_b >= min) && (prod_b <= start) && (prod_a * prod_b < max))
          fact(1) = prod_a;
          fact(2) = num / prod_a;
          break;
        end
    end
    prod_a = prod_a - 1;
end
end

