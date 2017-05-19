function w = move_me(v,varargin)
a = 0;
if(~isempty(varargin))
    a = varargin{1};
end
w = [v(v ~=a) v(v == a)];
end