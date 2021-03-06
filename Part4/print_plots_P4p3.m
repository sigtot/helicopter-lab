close all;

%% Parse estimates

estimates_raw_data = load('estimates.mat');

estimates = struct(...
    'time',         estimates_raw_data.data(1,:),...
    'p',            estimates_raw_data.data(2,:),...
    'p_dot',        estimates_raw_data.data(3,:),...
    'e',            estimates_raw_data.data(4,:),...
    'e_dot',        estimates_raw_data.data(5,:),...
    'lambda',       estimates_raw_data.data(6,:),...
    'lambda_dot',   estimates_raw_data.data(7,:)...
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

PART_PATH = '19_10_18/helicopter-lab/Part4/';
PART_AND_PROBLEM = 'P4p3';

font_size = struct(...
    'legend', 10,...
    'title', 18,...
    'xlabel', 12,...
    'ylabel', 12);

fig1 = figure(1); % Elevation rate
    plot(measurements.time, measurements.e_dot, 'color', 'g');
    hold on
    plot(estimates.time, estimates.e_dot, 'color', 'b');
    title(strcat('Elevation rate, tuning factor = ',{' '}, num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), 'Interpreter', 'latex', 'fontsize', font_size.title);
    legend({'$\dot{\hat{e}}$', '$\dot{e}_{meas}$'}, 'Interpreter', 'latex', 'fontsize', font_size.legend, 'location', 'best');
    ylabel({'Angular velocity [$\circ/s$]'}, 'Interpreter', 'latex', 'fontsize', font_size.ylabel);
    xlabel({'Time [s]'}, 'Interpreter', 'latex', 'fontsize', font_size.xlabel)

    % Save to .pdf
    
    set(fig1, 'Units', 'Inches');
    pos1 = get(fig1, 'Position');
    set(fig1, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos1(3), pos1(4)]);
    print(fig1, strrep(strcat(PART_PATH, PART_AND_PROBLEM, '_elevation_rate_tuning_factor_', num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), '.', 'pnt'), '-dpdf', '-r0');
    
fig2 = figure(2); % Pitch rate 
    plot(measurements.time, measurements.p_dot, 'color', 'g');
    hold on
    plot(estimates.time, estimates.p_dot, 'color', 'b');
    title(strcat('Pitch rate, tuning factor = ', {' '}, num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), 'Interpreter', 'latex', 'fontsize', font_size.title);
    legend({'$\dot{\hat{p}}$', '$\dot{p}_{meas}$'}, 'Interpreter', 'latex', 'fontsize', font_size.legend, 'location', 'best');
    ylabel({'Angular velocity [$\circ/s$]'}, 'Interpreter', 'latex', 'fontsize', font_size.ylabel);
    xlabel({'Time [s]'}, 'Interpreter', 'latex', 'fontsize', font_size.xlabel);

    % Save to .pdf
    
    set(fig2, 'Units', 'Inches');
    pos1 = get(fig2, 'Position');
    set(fig2, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos1(3), pos1(4)]);
    print(fig2, strrep(strcat(PART_PATH, PART_AND_PROBLEM, '_pitch_rate_tuning_factor_', num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), '.', 'pnt'), '-dpdf', '-r0');
    
fig3 = figure(3); % Travel rate
    plot(measurements.time, measurements.lambda_dot, 'color', 'g');
    hold on
    plot(estimates.time, estimates.lambda_dot, 'color', 'b');
    title(strcat('Travel rate, tuning factor = ', {' '}, num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), 'Interpreter', 'latex', 'fontsize', font_size.title);
    legend({'$\dot{\hat{\lambda}}$', '$\dot{\lambda}_{meas}$'}, 'Interpreter', 'latex', 'fontsize', font_size.legend, 'location', 'best');
    ylabel({'Angular velocity [$\circ/s$]'}, 'Interpreter', 'latex', 'fontsize', font_size.ylabel);
    xlabel({'Time [s]'}, 'Interpreter', 'latex', 'fontsize', font_size.xlabel);
    
    % Save to .pdf
    
    set(fig3, 'Units', 'Inches');
    pos1 = get(fig3, 'Position');
    set(fig3, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos1(3), pos1(4)]);
    print(fig3, strrep(strcat(PART_PATH, PART_AND_PROBLEM, '_travel_rate_tuning_factor_', num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), '.', 'pnt'), '-dpdf', '-r0');
    
fig4 = figure(4); % Pole-Zero-map of A-LC and A-BK
    plot(eig(A_observer - L*C_observer_p3), 'o', 'color', 'b');
    hold on
    plot(eig(A_wo_integral - B_wo_integral * K_wo_integral), 'o', 'color', 'g');
    grid on
    legend({'Poles of observer model', 'Poles of system model'}, 'Interpreter', 'latex');
    ylabel({'Imaginary axis'}, 'Interpreter', 'latex');
    xlabel({'Real axis'}, 'Interpreter', 'latex');
    title(strcat('Pole plot, tuning factor = ', {' '}, num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), 'Interpreter', 'latex');
    
    % Save to .pdf
    
    set(fig4, 'Units', 'Inches');
    pos1 = get(fig4, 'Position');
    set(fig4, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos1(3), pos1(4)]);
    print(fig4, strrep(strcat(PART_PATH, PART_AND_PROBLEM, '_pole_plot_tuning_factor_', num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), '.', 'pnt'), '-dpdf', '-r0');

fig5 = figure(5); % Pitch
    plot(measurements.time, measurements.p, 'color', 'g');
    hold on
    plot(estimates.time, estimates.p, 'color', 'b');
    title(strcat('Pitch, tuning factor = ', {' '}, num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), 'Interpreter', 'latex', 'fontsize', font_size.title);
    legend({'$\hat{p}$', '$p_{meas}$'}, 'Interpreter', 'latex', 'fontsize', font_size.legend, 'location', 'best');
    ylabel({'Angle [$\circ$]'}, 'Interpreter', 'latex', 'fontsize', font_size.ylabel);
    xlabel({'Time [s]'}, 'Interpreter', 'latex', 'fontsize', font_size.xlabel);
    
    % Save to .pdf
    
    set(fig5, 'Units', 'Inches');
    pos1 = get(fig5, 'Position');
    set(fig5, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos1(3), pos1(4)]);
    print(fig5, strrep(strcat(PART_PATH, PART_AND_PROBLEM, '_pitch_tuning_factor_', num2str(INIT_REAL_PART_PLACEMENT_TUNING_FACTOR)), '.', 'pnt'), '-dpdf', '-r0');
    