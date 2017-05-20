function T = pendulum(L, a0)
% a0 is postive and < ?
% T = period of a simple pendulum
% theta = angle [radians]
% w = angular velocity [radians/s]
% a = angular acceleration [radians/s2]
% g = acceleration due to gravity = 9.8 [m/s2] t = time [s]

theta = a0;
delta_t = 1*(10^-6);
g = 9.8;
w = 0;
time_elapsed = 0;

while((theta >0) && (L > 0))
a = -g * sin(theta)/L;
w = w + a * delta_t;
theta = theta + w * delta_t;
time_elapsed = time_elapsed + delta_t;
end

T = time_elapsed*4;

end 