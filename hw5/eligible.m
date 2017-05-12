function accepted = eligible(v, q)
average = (v + q)/2;
accepted = (average >= 92) && (v > 88) && (q > 88);
end