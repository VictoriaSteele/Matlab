function total = fare(dist, age)

discount = 1;
if((age <= 18) || (age >=60))
    discount = 0.8;
end

remaining_miles = round(dist)
if(remaining_miles > 10) 
    remaining_miles = (9 * 0.25) + max(0, (remaining_miles - 10)) * 0.1
else
    remaining_miles = max(0, (remaining_miles - 1)) * 0.25
end

total = (2 + remaining_miles) * discount;
end