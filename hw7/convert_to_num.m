function num = convert_to_num(A)
num = uint64(0);
for i = 1:size(A,2)
    num = num + A(i)*10^(size(A,2)-i);
end
end