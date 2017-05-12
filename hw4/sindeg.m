function [sin_out, avg] = sindeg(deg)
sin_out = sin(deg*pi/180);
[m,n] = size(sin_out);
avg = sum(sum(sin_out))/(m*n);
end