function roman_num = centuries(year)
roman_num = '';

if(is_valid_year(year))
    if(mod(year,100) == 0)
        year = floor(year/100);
    else
        year = floor(year/100) + 1;
    end

    roman_num = zeros(1, floor(year/10)) + 'X';
    roman_num = strcat(roman_num, get_remaining_digits(mod(year, 10)));
end
end

function digits = get_remaining_digits(num)
roman_numerals = {'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'};
digits = [];
if(num > 0)
    digits = roman_numerals{num};
end
end

function valid = is_valid_year(year)
valid = isscalar(year) ...
    && (year <= 3000) ...
    && (year >= 0) ... 
    && (floor(year) == year);
end