function smallest_int_class = integerize(A)
smallest_int_class = 'NONE';
max_val = max(max(A));
min_val = min(min(A));

if(no_precision_lost(max_val, min_val, @int8))
    smallest_int_class = 'int8'
elseif(no_precision_lost(max_val, min_val, @int16))
    smallest_int_class = 'int16'
elseif(no_precision_lost(max_val, min_val, @int32))
    smallest_int_class = 'int32'
elseif(no_precision_lost(max_val, min_val, @int64))
    smallest_int_class = 'int64'
end

end

function valid = no_precision_lost(max_val, min_val, fun)
    valid = (max_val == fun(max_val)) ...
     &&(min_val == fun(min_val));
end