function parity_input = add_parity(input)
parity_input = zeros() * (900 * 2);
for i = 1: 3: length(input)
    for j = 0: 2
        parity_input((2 * i -1) + j) = input(i + j);
    end
    parity_input((2 * i -1) + 3) = input(i) + input(i + 1);
    parity_input((2 * i -1) + 4) = input(i) + input(i + 2);
    parity_input((2 * i -1) + 5) = input(i + 1) + input(i + 2);
end
end

