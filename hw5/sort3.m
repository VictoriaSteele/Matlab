function [a, b, c] = sort3(N)

if(N(2) < N(1))
    N = swap_indeces(N, 1, 2);
end

if (N(3) < N(2))
    N = swap_indeces(N, 2, 3);
end

if(N(2) < N(1))
    N = swap_indeces(N, 1, 2);
end

a = N(1);
b = N(2);
c = N(3); 

end

function X = swap_indeces(N, a, b)
X = N;
X(a) = N(b);
X(b) = N(a);
end