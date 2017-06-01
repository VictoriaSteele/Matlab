function x = find_zero(f,x1,x2)
% f = function handle
% x1 < x2 are both scalars
% find zero in the range of x1 to x1
% y = f(x), y is defined by abs(y) < 1e-10
% f has on escalar input and one scalar ouput

x = (x1+x2)/2;

while(abs(f(x))> 1e-10)
   if(sign(f(x)) ~= sign(f(x1)))
       x2 = x;
   else
       x1 = x;
   end
   x = (x1+x2)/2; 
end

end