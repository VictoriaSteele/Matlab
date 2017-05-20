function sum = triangle_wave(n)
t = 0:4*pi/1000:4*pi;
sum = zeros(1,size(t,2));
for k = 0:n
    for data_point = 1:size(t,2)
        sum(data_point) = sum(data_point) + ...
            (-1)^k * sin((2*k+1)*t(data_point))/...
            ((2*k+1)^2);
    end
end
end