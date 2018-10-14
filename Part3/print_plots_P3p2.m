
    p_matrix = zeros(15,10000);

    shortest_run_p = Inf;


i_p = 1;

p_c_raw_data = load('LQR_p_c.mat');
p_raw_data = load('LQR_p.mat');

p_matrix(i_p,1:length(p_raw_data.ans)) = p_raw_data.ans(2,:);

if shortest_run_p > length(p_raw_data.ans)
    shortest_run_p = length(p_raw_data.ans);
end

t = p_c_raw_data.ans(1,:);
p_c = p_c_raw_data.ans(2,:);
p = p_raw_data.ans(2,:);

figure(1)
plot(t, p_c, 'color', 'r');
hold on
plot(t, p);
xlabel('Time [s]','Interpreter', 'latex');
ylabel('Pitch [$\circ$]','Interpreter', 'latex');
legend('$p_c$',)

    e_dot_matrix = zeros(15,10000);

    shortest_run_e_dot = Inf;

    i_e_dot = 0;
e_c_dot_raw_data = load('LQR_e_c_dot.mat');
e_dot_raw_data = load('LQR_e_dot.mat');
i_e_dot = i_e_dot + 1;
e_dot_matrix(i_p,1:length(e_dot_raw_data.ans)) = e_dot_raw_data.ans(2,:);

if shortest_run_e_dot > length(e_dot_raw_data.ans)
    shortest_run_e_dot = length(e_dot_raw_data.ans);
end

%t = e_c_raw_data.ans(1,:);
e_c_dot = e_c_dot_raw_data.ans(2,:);
e_dot = e_dot_raw_data.ans(2,:);

figure(2)
plot(t, e_c_dot, 'color', 'r');
hold on
plot(t, e_dot);
xlabel('Time [s]','Interpreter', 'latex');
ylabel('$\dot{e}$ [$\circ$]','Interpreter', 'latex');
%lg = legend('p_c', '$p, K_{pp} = 36$');
%set(lg,'Interpreter', 'latex');