﻿input = randi([0, 1], 1, 900);

% 1.1

chan_output1_1 = transmit(input, 0.3);
chan_output2_1 = transmit(input, 0.5);
chan_output3_1 = transmit(input, 0.7);

chan_error_rate1_1 = error_rate(input, chan_output1_1);
chan_error_rate2_1 = error_rate(input, chan_output2_1);
chan_error_rate3_1 = error_rate(input, chan_output3_1);

msg1_1 = sprintf("Error rate for channel with p = 0.3: %d", chan_error_rate1_1);
msg1_2 = sprintf("Error rate for channel with p = 0.5: %d", chan_error_rate2_1);
msg1_3 = sprintf("Error rate for channel with p = 0.7: %d\n", chan_error_rate3_1);
disp(msg1_1);
disp(msg1_2);
disp(msg1_3);

% 1.2

chan_output1_2 = repeat_transmit(input, 0.3);
chan_output2_2 = repeat_transmit(input, 0.5);
chan_output3_2 = repeat_transmit(input, 0.7);

chan_error_rate1_2 = error_rate(input, chan_output1_2);
chan_error_rate2_2 = error_rate(input, chan_output2_2);
chan_error_rate3_2 = error_rate(input, chan_output3_2);

msg2_1 = sprintf("Error rate for channel with 3 repeated transmissions and p = 0.3: %d", chan_error_rate1_2);
msg2_2 = sprintf("Error rate for channel with 3 repeated transmissions and p = 0.5: %d", chan_error_rate2_2);
msg2_3 = sprintf("Error rate for channel with 3 repeated transmissions and p = 0.7: %d", chan_error_rate3_2);
disp(msg2_1);
disp(msg2_2);
disp(msg2_3);
