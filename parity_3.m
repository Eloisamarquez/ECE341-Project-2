function output = parity_3(input)

    output = zeros() * length(input);
    output(1)= input(1);
    output(2)= input(2);
    output(3)= input(3);
    
    for i = 1: 6: length(input)
        num_errors = 0;
        x_Error = [false, false, false];

        for j = 0:2
            %checking xi+x(i+1)
            if(input(i+j) == 0) %when xi = 0
                if(input(i+j+1) == 0) %when x(i+1) = 0 
                    if(input(i+j+3) == 1) %Parity bit = 1 (false)
                        x_Error(j+1) = true;
                        num_errors = num_errors + 1;
                    end
                else %when x(i+1) = 1 
                    if(input(i+j+3) == 0) %Parity bit = 0 (false)
                        x_Error(j+1) = true;
                        num_errors = num_errors + 1;  
                    end
                end
            else %when xi = 1
                if(input(i+j+1) == 0) %when x(i+1) = 0 
                    if(input(i+j+3) == 0) %Parity bit = 0 (false)
                        x_Error(j+1) = true;
                        num_errors = num_errors + 1;
                    end
                else %when x(i+1) = 1
                    if(input(i+j+3) == 1) %Parity bit = 1 (false)
                        x_Error(j+1) = true;
                        num_errors = num_errors + 1;  
                    end
                end
            end
        end
        
         for m = 1:3 %changing variabiles 
             if (num_errors <= 1) %checks amount of errors
                if(x_Error(m) == true)
                    if(input(i+m+2) == 0)
                        output(i+m+2) = 1;
                    else
                        output(i+m+2) = 0;
                    end
                else
                    output(i+m+2) = input(i+m+2); 
                end
             else
                 output(i+m+2) = input(i+m+2); 
             end
         end
    end
end