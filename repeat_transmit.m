function output = repeat_transmit(input, p)
    output = zeros() * length(input);
    for i = 1: length(input)
        num_errors = 0;
        for j = i: 3
            if (rand() <= p)
                num_errors += 1;
            end
        end
        
        if (num_errors >= 2)
            output(i) = !(input(i));
        else
            output(i) = input(i);
    end
end
