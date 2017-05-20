function [prod, index] = max_product(v, n)
prod = 0;
index = -1;

if(iscolumn(v))
    v = v';
end

if(size(v,2) >= n)
    
    prod = v(1);
    index = 1;
    for count = 1:n-1
        prod = prod*v(1+count);
    end

    for i = 1:size(v,2)-n+1
        
        temp_prod = v(i);
        for count = 1:n-1
            temp_prod = temp_prod*v(i+count);
        end
        
        if(temp_prod > prod)
             prod = temp_prod;
             index = i;
        end
        
    end
end
end