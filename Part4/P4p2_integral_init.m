%% Declare constant matrixes used in the observer model

run('Part3/P3p3_init.m');

A_observer = [0, 1, 0, 0, 0, 0; ...
              0, 0, 0, 0, 0, 0; ...
              0, 0, 0, 1, 0, 0; ...
              0, 0, 0, 0, 0, 0; ...
              0, 0, 0, 0, 0, 1; ...
            K_3, 0, 0, 0, 0, 0
       ];

B_observer = [
       0,   0; ...
       0,   K_1; ...
       0,   0; ...
       K_2, 0; ...
       0,   0; ...
       0,   0
       ];

C_observer_p2 = [1, 0, 0, 0, 0, 0; ...
              0, 0, 1, 0, 0, 0; ...
              0, 0, 0, 0, 1, 0
       ];

%% Tuning of poles for 'L'

% Find fastest eigenvalue of the actual system and uses this as a basis for
% further placement

INIT_REAL_PART_PLACEMENT_TUNING_FACTOR = 70; % 10 is nice, 100 too much and 1 too little

eig_w_integral = eig(A_w_integral - B_w_integral * K_w_integral);

real_part_init = min(real(eig_w_integral))*INIT_REAL_PART_PLACEMENT_TUNING_FACTOR;

number_of_poles = length(A_observer);

desired_poles = zeros(number_of_poles, 1);

% Place poles in a fan formation

j = sqrt(-1);

theta = pi / 50;

for i = 1:2:number_of_poles
    real_part = cos(theta) * real_part_init;

    desired_poles(i) = real_part + j * sin(theta) * real_part_init;
    desired_poles(i + 1) = real_part - j * sin(theta) * real_part_init;

    theta = theta + pi / 30;

end

%% Creates 'L' with desired poles with 'place'

L = place(A_observer', C_observer_p2', desired_poles)';

% TODO: Remove this?
O_observer = [C_observer_p2; C_observer_p2*A_observer; C_observer_p2*A_observer^2; C_observer_p2*A_observer^3; C_observer_p2*A_observer^4; C_observer_p2*A_observer^5];

