function indexes = small_elements(X)
[r, c] = size(X);
indexes = [];
for i = 1:c
    for j = 1:r
        if(X(j,i) < i * j)
         indexes = [indexes ; j i ];
        end
    end
end
end