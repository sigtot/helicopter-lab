close all;

%% Parse references

references_raw_data = load('references.mat');

references = struct(...
    'time',         references_raw_data.data(1,:),...
    'p',            references_raw_data.data(2,:),...
    'e_dot',        references_raw_data.data(3,:)...
);

%% Parse measurements

measurements_raw_data = load('measurements.mat')';

measurements = struct(...
    'time',         measurements_raw_data.data(1,:),...
    'p',            measurements_raw_data.data(2,:),...
    'p_dot',        measurements_raw_data.data(3,:),...
    'e',            measurements_raw_data.data(4,:),...
    'e_dot',        measurements_raw_data.data(5,:),...
    'lambda',       measurements_raw_data.data(6,:),...
    'lambda_dot',   measurements_raw_data.data(7,:)...
);

%% Plot graphs

PART_PATH = 'Part3/';
PART_AND_PROBLEM = 'P3p3';

font_size = struct(...
    'legend', 10,...
    'title', 18,...
    'xlabel', 12,...
    'ylabel', 12);

fig1 = figure(1); % Elevation rate
    plot(measurements.time, measurements.e_dot, 'color', 'g');
    hold on
    plot(references.time, references.e_dot, 'color', 'b');
    title('Elevation rate', 'Interpreter', 'latex', 'fontsize', font_size.title);
    legend({'$\dot{e}_{meas}$', '$\dot{e}_c$'}, 'Interpreter', 'latex', 'fontsize', font_size.legend, 'location', 'best');
    ylabel({'Angular velocity [$\circ/s$]'}, 'Interpreter', 'latex', 'fontsize', font_size.ylabel);
    xlabel({'Time [s]'}, 'Interpreter', 'latex', 'fontsize', font_size.xlabel)

    % Save to .pdf
    
    set(fig1, 'Units', 'Inches');
    pos1 = get(fig1, 'Position');
    set(fig1, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos1(3), pos1(4)]);
    print(fig1, strrep(strcat(PART_PATH, PART_AND_PROBLEM, '_elevation_rate'), '.', 'pnt'), '-dpdf', '-r0');
    
fig2 = figure(2); % Pitch 
    plot(measurements.time, measurements.p , 'color', 'g');
    hold on
    plot(references.time, references.p , 'color', 'b');
    title('Pitch', 'Interpreter', 'latex', 'fontsize', font_size.title);
    legend({'$p_{meas}$', '$p_c$'}, 'Interpreter', 'latex', 'fontsize', font_size.legend, 'location', 'best');
    ylabel({'Angle [$\circ$]'}, 'Interpreter', 'latex', 'fontsize', font_size.ylabel);
    xlabel({'Time [s]'}, 'Interpreter', 'latex', 'fontsize', font_size.xlabel);

    % Save to .pdf
    
    set(fig2, 'Units', 'Inches');
    pos1 = get(fig2, 'Position');
    set(fig2, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos1(3), pos1(4)]);
    print(fig2, strrep(strcat(PART_PATH, PART_AND_PROBLEM, '_pitch'), '.', 'pnt'), '-dpdf', '-r0');


% 
%     p_matrix = zeros(15,10000);
% 
%     shortest_run_p = Inf;
% 
% 
% i_p = 1;
% 
% p_c_raw_data = load('LQR_p_c.mat');
% p_raw_data = load('LQR_p.mat');
% 
% p_matrix(i_p,1:length(p_raw_data.ans)) = p_raw_data.ans(2,:);
% 
% if shortest_run_p > length(p_raw_data.ans)
%     shortest_run_p = length(p_raw_data.ans);
% end
% 
% t = p_c_raw_data.ans(1,:);
% p_c = p_c_raw_data.ans(2,:);
% p = p_raw_data.ans(2,:);
% 
% figure(1)
% plot(t, p_c, 'color', 'r');
% hold on
% plot(t, p);
% xlabel('Time [s]','Interpreter', 'latex');
% ylabel('Pitch [$\circ$]','Interpreter', 'latex');
% legend('$p_c$')
% 
%     e_dot_matrix = zeros(15,10000);
% 
%     shortest_run_e_dot = Inf;
% 
%     i_e_dot = 0;
% e_c_dot_raw_data = load('LQR_e_c_dot.mat');
% e_dot_raw_data = load('LQR_e_dot.mat');
% i_e_dot = i_e_dot + 1;
% e_dot_matrix(i_p,1:length(e_dot_raw_data.ans)) = e_dot_raw_data.ans(2,:);
% 
% if shortest_run_e_dot > length(e_dot_raw_data.ans)
%     shortest_run_e_dot = length(e_dot_raw_data.ans);
% end
% 
% %t = e_c_raw_data.ans(1,:);
% e_c_dot = e_c_dot_raw_data.ans(2,:);
% e_dot = e_dot_raw_data.ans(2,:);
% 
% figure(2)
% plot(t, e_c_dot, 'color', 'r');
% hold on
% plot(t, e_dot);
% xlabel('Time [s]','Interpreter', 'latex');
% ylabel('$\dot{e}$ [$\circ$]','Interpreter', 'latex');
%lg = legend('p_c', '$p, K_{pp} = 36$');
%set(lg,'Interpreter', 'latex');