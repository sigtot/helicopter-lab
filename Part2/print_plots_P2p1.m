if ~exist('p_matrix', 'var')
    p_matrix = zeros(15,10000);
    i = 0;
    K_pp_array = zeros(1, 15);
    shortest_run = Inf;
end


p_c_raw_data = load('P2p1_pitch_c.mat');
p_raw_data = load('P2p1_pitch.mat');
i = i + 1;
K_pp_array(i) = K_pp;
p_matrix(i,1:length(p_raw_data.ans)) = p_raw_data.ans(2,:);

if shortest_run > length(p_raw_data.ans)
    shortest_run = length(p_raw_data.ans);
end

t = p_c_raw_data.ans(1,:);
p_c = p_c_raw_data.ans(2,:);
p = p_raw_data.ans(2,:);

hold on
plot(t, p_c);
hold on
plot(t, p);
xlabel('Time [s]','Interpreter', 'latex');
ylabel('Pitch [$\circ$]','Interpreter', 'latex');
%lg = legend('p_c', '$p, K_{pp} = 36$');
%set(lg,'Interpreter', 'latex');