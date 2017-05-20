function [prod, index] = max_product(v, n)

prod = 0;
index = -1;

if(iscolumn(v))
    v = v';
end

if(size(v,2) >= n)
    index = 1;
    prod = get_index_product(v, 1, n);

    for i = 1:size(v,2)-n+1
       
        new_prod = get_index_product(v, i, n);
        
        if(new_prod > prod)
             prod = new_prod;
             index = i;
        end
        
    end
end
end

function prod = get_index_product(v, index, n)
    prod = v(index);
    for count = 1:n-1
        prod = prod*v(index+count);
    end
end