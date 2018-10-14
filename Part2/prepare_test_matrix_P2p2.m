if ~exist('lambda_dot_backup', 'var')
lambda_dot_backup = lambda_dot_matrix;
end


lambda_dot_matrix = lambda_dot_matrix(1:i,1:shortest_run);
lambda_dot_fake = zeros(1,shortest_run);
lambda_dot_fake(1000:end) = 45;
hsv = [0 300 300];
j = 0;

for j = 1:i
   
    plot(lambda_dot_matrix(j,2000:end), 'Color', hsv2rgb(hsv/360));
    hold on
    hsv(1) = hsv(1) + 360/i;
    
end

%plot(lambda_dot_c(2000:end), '-*');
plot(lambda_dot_joystick(2000:end), '-*');


s = cell(1,i+1);

for j = 1:i
   
    s{j} = strcat('$', 'K_{lp} = ', num2str(Klp_array(j)), '$');
    
end

s{i+1} = '$\dot{\lambda_c}$';

legend(s,'Interpreter', 'latex', 'location', 'best');

xlabel('Time [ms]', 'Interpreter', 'latex');
ylabel('$\dot{\lambda}$', 'Interpreter', 'latex')