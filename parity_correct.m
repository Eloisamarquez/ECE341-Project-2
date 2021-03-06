function output = parity_correct(parity_output)
output = zeros() * (length(parity_output) / 2);
for i = 1: 6: length(parity_output)
    bit_correct = [false false false];
    bit_correct(1) = (bitget(parity_output(i) + parity_output(i + 1), 1) == parity_output(i + 3));
    bit_correct(1) = (bitget(parity_output(i) + parity_output(i + 2), 1) == parity_output(i + 4));
    bit_correct(1) = (bitget(parity_output(i + 1) + parity_output(i + 2), 1) == parity_output(i + 5));
    
    if (~bit_correct(1) && ~bit_correct(2) && bit_correct(3))
        output(i) = 1 - parity_output(i);
        output(i) = parity_output(i + 1);
        output(i) = parity_output(i + 2);
    elseif (~bit_correct(1) && bit_correct(2) && ~bit_correct(3))
        output(i) = parity_output(i);
        output(i) = 1 - parity_output(i + 1);
        output(i) = parity_output(i + 2);
    elseif (bit_correct(1) && ~bit_correct(2) && ~bit_correct(3))
        output(i) = parity_output(i);
        output(i) = parity_output(i + 1);
        output(i) = 1 - parity_output(i + 2);
    else
        output(i) = parity_output(i);
        output(i) = parity_output(i + 1);
        output(i) = parity_output(i + 2);
    end
    
end
end