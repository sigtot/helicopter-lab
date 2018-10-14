if ~exist('p_backup', 'var')
p_backup = p_matrix;
end


p_matrix = p_matrix(1:i_p,1:shortest_run_p);
p_fake = zeros(1,shortest_run_p);
p_fake(1000:end) = 45;
hsv = [0 300 300];
j = 0;

for j = 1:i_p
   figure(1)
    plot(p_matrix(j,2000:end), 'Color', hsv2rgb(hsv/360));
    hold on
    hsv(1) = hsv(1) + 360/i_p;
    
end
figure(1)
plot(p_c(2000:end), '-*');

s = {'$p$', '$p_c$'};

figure(1)
legend(s,'Interpreter', 'latex', 'location', 'best');
xlabel('Time [ms]', 'Interpreter', 'latex');
ylabel('Pitch [$\circ$]', 'Interpreter', 'latex')

if ~exist('e_dot_backup', 'var')
e_dot_backup = e_dot_matrix;
end


e_dot_matrix = e_dot_matrix(1:i_e_dot,1:shortest_run_e_dot);
e_dot_fake = zeros(1, shortest_run_e_dot);
e_dot_fake(1000:end) = 45;
hsv = [0 300 300];
j = 0;

for j = 1:i_e_dot
   figure(2)
    plot(e_dot_matrix(j,2000:end), 'Color', hsv2rgb(hsv/360));
    hold on
    hsv(1) = hsv(1) + 360/i_e_dot;
    
end
figure(2)
plot(e_c_dot(2000:end), '-*');
%plot(lambda_dot_joystick(2000:end), '-*');

s = {'$e$', '$e_c$'};

figure(2)
legend(s,'Interpreter', 'latex', 'location', 'best');
xlabel('Time [ms]', 'Interpreter', 'latex');
ylabel('Elevation Rate', 'Interpreter', 'latex')