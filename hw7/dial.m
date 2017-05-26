function phone_num = dial(char_num)
phone_num = zeros(1, size(char_num, 2)) + '*';
num_by_letters = {'ABC', 'DEF', 'GHI', 'JKL', 'MNO', ...
    'PQRS', 'TUV', 'WXYZ'};

for i = 1:size(char_num, 2)
    if(char_num(i) >= '0' && char_num(i) <= '9')
        phone_num(i) = str2double(char_num(i));
    else
        for j = 1:size(num_by_letters, 2)
            if(strfind(num_by_letters{j}, char_num(i)))
                phone_num(i) = j+1;
            end
        end
    end
end
invalid = sum((find(phone_num == '*') > 0));
if(invalid)
    phone_num = uint64(0);
else
    phone_num = convert_to_num(phone_num);
end
    
end



