function output = transmit(input, p)
    output = zeros() * length(input);
    for i = 1 : length(input)
        if (rand() <= p)
            output(i) =  1 - input(i);
        else
            output(i) = input(i);
        end
    end
end
        
        
