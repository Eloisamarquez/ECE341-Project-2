function rate = error_rate(input, output)
    error_count = 0;
    for i = 1 : length(input)
        if (input(i) != output(i))
            error_count += 1;
        end
    end
    
    rate = error_count / length(input);
end
