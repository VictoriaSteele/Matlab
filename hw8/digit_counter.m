function digit_count = digit_counter(file)
    fid = fopen(file, 'rt');
    digit_count = 0;
    if fid < 0
        digit_count = -1;
    else
        oneline = fgets(fid);
        while ischar(oneline)
            start = oneline(oneline >= '0');
            digits = start(start <= '9');
            digit_count = digit_count + size(digits, 2);
            oneline = fgets(fid);
        end
    end
end