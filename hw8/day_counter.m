function mondays = day_counter(end_year)

mondays = 0;

for year = 1776:end_year
    for day = 1:total_days_in(year)
    end
end

end

function days = total_days_in(year)
    if is_leap_year(year) 
        days = 366;
    else 
        days = 365;
    end
end

function valid = is_leap_year(year)
    valid = (mod(year, 4) == 0);
    if mod(year, 100) == 0
    valid = valid && (mod(year, 400) == 0);
    end
end