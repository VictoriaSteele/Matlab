function [app_e, k] = approximate_e(delta)
app_e = 1;
k = 1;

while(abs(app_e - exp(1)) >= delta)
    app_e = app_e + 1/prod(1:k);
    k = k + 1;
end
k = k -1;
end