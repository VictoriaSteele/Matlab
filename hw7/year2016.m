function days = year2016(month)
days_by_month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
month_by_name = {'January', 'February', 'March', 'April', 'May', ...
    'June', 'July', 'August', 'September', 'October', 'November',...
    'December'};
% 2016 started on a Friday
days_by_name = {'Fri', 'Sat', 'Sun', 'Mon', 'Tue', ...
    'Wed', 'Thu'};
if(is_valid(month))
    days_in_month = days_by_month(month);
    total_days = sum(days_by_month(1:month-1));
    days(1:days_in_month) = struct('month',[], 'date', [], 'day', []);
    for i = 1:days_in_month
        days(i).month = month_by_name{month};
        days(i).date = i;
        days(i).day = days_by_name{mod(total_days + i - 1, 7) + 1};
    end
else
    days = [];
end
end

function valid = is_integer(val)
    valid = isscalar(val) && mod(val,1) == 0;
end

function valid = is_valid(month)
    valid = is_integer(month) ...
       && month >= 1 ...
       && month <= 12;
end