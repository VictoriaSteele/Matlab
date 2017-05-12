function out = exp_average(in, varargin)
persistent b;
persistent outn;

if(isempty(outn) || ~isempty(varargin))
    outn = in;
    if(isempty(varargin))
        b = 0.1;
    else
        b = varargin{1};
    end
else
    outn = b*in + (1-b)*outn;
end

out = outn;
end