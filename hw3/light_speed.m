function [time_min, miles] = light_speed(km)
time_min = (km / 300000)/60;
miles = km / 1.609;
end