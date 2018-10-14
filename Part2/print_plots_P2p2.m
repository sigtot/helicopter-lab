if ~exist('lambda_dot_matrix', 'var')
    lambda_dot_matrix = zeros(15,10000);
    i = 0;
    Klp_array = zeros(1, 15);
    shortest_run = Inf;
end


lambda_dot_c_raw_data = load('P2p2_lambda_dot_c.mat');
lambda_dot_raw_data = load('P2p2_lambda_dot.mat');
lambda_dot_joystick_raw_data = load('P2p2_lambda_dot_c_joystick.mat');
i = i + 1;
Klp_array(i) = Klp;
lambda_dot_matrix(i,1:length(lambda_dot_raw_data.ans)) = lambda_dot_raw_data.ans(2,:);

if shortest_run > length(lambda_dot_raw_data.ans)
    shortest_run = length(lambda_dot_raw_data.ans);
end

t = lambda_dot_c_raw_data.ans(1,:);
lambda_dot_c = lambda_dot_c_raw_data.ans(2,:);
lambda_dot = lambda_dot_raw_data.ans(2,:);
lambda_dot_joystick = lambda_dot_joystick_raw_data.ans(2,:);

hold on
plot(t, lambda_dot_c);
hold on
plot(t, lambda_dot);
xlabel('Time [s]','Interpreter', 'latex');
ylabel('\lambda [\circ]','Interpreter', 'latex');
%lg = legend('p_c', '$p, K_{pp} = 36$');
%set(lg,'Interpreter', 'latex');