function product = palin_product(dig, lim)
product = 0;
product_start = (10^dig)-1;
min = 10^(dig-1);
test_num = lim;


 while(test_num > 0)
     if(is_palindrome(test_num))
         A = find_factors(product_start, min, test_num, lim)
         if(prod(A) > 0)
             product = test_num;
             break;
         end
     end
     test_num = test_num - 1;
 end
end

