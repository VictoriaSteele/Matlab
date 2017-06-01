function cell_vector = logipack(matrix)
rows = size(matrix, 2);
cell_vector = cell(1, rows);
for i = 1:rows
    cell_vector{i} = find(matrix(i, :)>0);
    if(isempty(cell_vector{i}))
        cell_vector{i} = [];
    end
end
end