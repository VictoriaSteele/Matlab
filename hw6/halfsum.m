function out = halfsum(A)
[row, col] = size(A);
out = 0;
for i = 1:col 
    start = max(1, row-i+1);
    for j = start:row                
        out = out + A(j, i);
    end
end
end