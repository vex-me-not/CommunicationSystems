function evenodd(t,y)
    t_plus = 1.* t;    % to t
    t_minus = (-1).* t; % to -t
    
    y_even = 0.5 .*(y(t_plus) + y(t_minus));  % ypologismos toy y_even
    y_odd = 0.5 .* (y(t_plus) - y(t_minus));  % ypologismos toy y_odd
    y_t = y_even + y_odd;                     % ypologismos toy y(t)
    y_original= y(t_plus);
    
    % ektyposi toy y_even
    subplot(1,4,1);             
    plot(t,y_even);
    ylabel('yEven');
    xlabel('t');
    title('yEven');
    grid on;

    % ektyposi toy y_odd
    subplot(1,4,2);             
    plot(t,y_odd);
    ylabel('yOdd');
    xlabel('t');
    title('yOdd');
    grid on;

    % ektyposi toy y_even+y_odd
    subplot(1,4,3);             
    plot(t,y_t);
    ylabel('yEven+yOdd');
    xlabel('t');
    title('yEven+yOdd');
    grid on;

    % ektyposi kai tis dothisas synartisis
    subplot(1,4,4);             
    plot(t,y_original);
    ylabel('y(t)');
    xlabel('t');
    title('y(t)');
    grid on;    
end    