function days = day_diff(month1, day1, month2, day2)
global days_by_month;
days_by_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

if(valid_date(month1, day1) && valid_date(month2, day2))
    total_days_1 = sum(days_by_month(1:month1 -1)) + day1;
    total_days_2 = sum(days_by_month(1:month2 -1)) + day2;
    days = abs(total_days_1 - total_days_2);
else
    days = -1;
end

end

function valid = in_range(low, val, high)
   valid = (val <= high) && (val >=low);
end

function valid = is_integer(val)
    valid = isscalar(val) && mod(val,1) == 0;
end

function valid = valid_date(month, day)
    global days_by_month;
    valid = is_integer(month) ...
        && is_integer(day) ...
        && in_range(1, month, 12) ...
        && in_range(1, day, days_by_month(month));
end