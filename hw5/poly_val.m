function p = poly_val(c0, c, x)
if(isempty(c))
    p = c0;
elseif (isscalar(c))
    p = c0 + c*x
else
    if(iscolumn(c))
        c = c';
    end
    p = c0 + sum(c.*x.^(1:length(c)));
end
end