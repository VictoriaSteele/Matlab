function logical_matrix = logiunpack(cell_vector)
k = size(cell_vector, 2);
logical_matrix = zeros(k)
for i = 1:k
  logical_matrix(i, cell_vector{i}) = true;
end
logical_matrix = logical(logical_matrix);
end

%cell{1} -> A(1, 1:end) = [ 1 2 3 6..] => [ 1 1 1 0 0 1 ...]
%cell{2} -> A(2, 1:end) = [ 3 4 5 ...] => [ 0 0 1 1 1 0 ...]

% Notes
% cell vector length = matrix n by n 