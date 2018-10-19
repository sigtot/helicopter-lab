%% Declare constant matrixes used in the observer model

q1 = 9; %4 - Pitch
q2 = 3; %4 - Pitch rate
q3 = 50; %14 - Elevation rate
q4 = 0.01; %20 - Gamma: p - p_c
q5 = 0.01; %200 - Eta: e_dot - e_dot_c

r1 = 2;%500; %1 - Vs
r2 = 8;%500; %20 - Vd

R = diag([r1, r2]);

A_w_integral = [0, 1, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0; 0, 0, 1, 0, 0];
B_w_integral = [0, 0; 0, K_1; K_2, 0; 0, 0; 0, 0];
C_w_integral = [1, 0, 0, 0, 0; 0, 0, 1, 0, 0];
F = [0, 0; 0, 0; 0, 0; -1, 0; 0, -1];

Q_w_integral = diag([q1, q2, q3, q4, q5]);

K_w_integral = lqr(A_w_integral, B_w_integral, Q_w_integral, R);

% Using the same P matrix as in previous problem

P_w_integral = P_wo_integral;

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

C_observable =      [0, 0, 1, 0, 0, 0;
                     0, 0, 0, 0, 1, 0; ]; % Observable

C_unobservable =    [1, 0, 0, 0, 0, 0;
                     0, 0, 1, 0, 0, 0; ]; % Unobservable

C_observer_p3 =     [0, 0, 1, 0, 0, 0;
                     0, 0, 0, 0, 1, 0; ];

% Observable matrix: elevation and travel measured
O_observable = [C_observable;
                C_observable * A_observer;
                C_observable * A_observer^2;
                C_observable * A_observer^3;
                C_observable * A_observer^4;
                C_observable * A_observer^5; ];
      
% Non observable matrix: pitch and elevation measured
O_unobservable = [C_unobservable;
                  C_unobservable * A_observer;
                  C_unobservable * A_observer^2;
                  C_unobservable * A_observer^3;
                  C_unobservable * A_observer^4;
                  C_unobservable * A_observer^5; ];
              
%% Tuning of poles for 'L'

% Find fastest eigenvalue of the actual system and uses this as a basis for
% further placement

INIT_REAL_PART_PLACEMENT_TUNING_FACTOR = 40; % 40 is nice % 10 is nice, 100 too much and 1 too little

real_part_init = min(real(eig(A_w_integral - B_w_integral*K_w_integral)))*INIT_REAL_PART_PLACEMENT_TUNING_FACTOR;

number_of_poles = length(A_observer);

desired_poles = zeros(number_of_poles, 1);

% Place poles in a fan formation

% j = sqrt(-1);
% 
% theta = 0;
% d_theta = pi / 50;
% 
% for i = 1:2:number_of_poles
%     real_part = cos(theta) * real_part_init;
% 
%     desired_poles(i) = real_part + j * sin(theta) * real_part_init;
%     desired_poles(i + 1) = real_part - j * sin(theta) * real_part_init;
% 
%     theta = theta + d_theta;
% 
% end

% Place poles along real axis

pole_displacement = -0.1;

desired_poles = real_part_init : pole_displacement : (real_part_init + pole_displacement*(number_of_poles - 1));

%% Creates 'L' with desired poles with 'place'

L = place(A_observer', C_observer_p3', desired_poles)';