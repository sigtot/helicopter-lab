% FOR HELICOPTER NR 3-10
% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert h�sten 2006 av Jostein Bakkeheim
% Oppdatert h�sten 2008 av Arnfinn Aas Eielsen
% Oppdatert h�sten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring


%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 1;
Joystick_gain_y = -1;


%%%%%%%%%%% Physical constants
g = 9.81; % gravitational constant [m/s^2]
l_c = 0.46; % distance elevation axis to counterweight [m]
l_h = 0.66; % distance elevation axis to helicopter head [m]
l_p = 0.175; % distance pitch axis to motor [m]
m_c = 1.92; % Counterweight mass [kg]
m_p = 0.72; % Motor mass [kg]
Vs_astrix = 7.5;

K_f = -g*(m_c*l_c - 2*m_p*l_h)/(l_h*Vs_astrix);

L_1 = l_p*K_f;
L_2 = g*(m_c*l_c - 2*m_p*l_h);
L_3 = l_h*K_f;
L_4 = -l_h*K_f;

J_p = 2*m_p*l_p^2;
J_e = m_c*l_c^2 + 2*m_p*l_h^2;
J_lam = m_c*l_c^2 + 2*m_p*(l_h^2 + l_p^2);

K_1 = L_1/J_p;
K_2 = L_3/J_e;
K_3 = L_2/J_lam;

Joystick_gain_x = 2;
Joystick_gain_y = 2;

%% Part 3

A = [0,1,0; 0,0,0; 0,0,0];
B = [0,0; 0,K_1; K_2,0];
C = [1,0,0; 0,0,1];

A_3 = [0,1,0,0,0; 0,0,0,0,0; 0,0,0,0,0; 1,0,0,0,0; 0,0,1,0,0];
B_3 = [0,0; 0,K_1; K_2,0; 0,0; 0,0];
C_3 = [1,0,0,0,0;0,0,1,0,0];

F_3 = [0,0;0,0;0,0;-1,0;0,-1];



q1 = 150; %4
q2 = 10; %4
q3 = 150; %14
q4 = 10; %20
q5 = 10; %200

Q_3 = diag([q1, q2, q3, q4, q5]);

r1 = 2; %1
r2 = 20; %20

R = diag([r1, r2]);

K = lqr(A_3, B_3, Q_3, R);
K_hat = K(1:2,1:3);

Control = [A, A*B, A.^2*B];

C_3 = [1,0,0,0,0;0,0,1,0,0];

P = inv(C * inv(B*K_hat - A) * B);



%% Part 4

A_4 = [0,   1, 0, 0, 0, 0;...
       0,   0, 0, 0, 0, 0;...
       0,   0, 0, 1, 0, 0;...
       0,   0, 0, 0, 0, 0;...
       0,   0, 0, 0, 0, 1;...
       K_3, 0, 0, 0, 0, 0
];

B_4 = [
    0,   0;...
    0,   K_1;...
    0,   0;...
    K_2, 0;...
    0,   0;...
    0,   0
];

C_4 = [1, 0,  0,  0,  0,  0;...
     0, 0,  1,  0,  0,  0;...
     0, 0,  0,  0,  1,  0
 ];


q1 = 150; %4
q2 = 10; %4
q3 = 150; %14
q4 = 10; %20
q5 = 2; %200
q6 = 0;

Q_4 = diag([q1, q2, q3, q4, q5, q6]);
K_4 = lqr(A_4, B_4, Q_4, R);

start_p = min(real(eig(A_3 - B_3*K))) - 1;

[rows_A, ~] = size(A_3);

p = zeros(rows_A, 1);

j = sqrt(-1);

theta = pi/50;

for i = 1:2:length(p)
    real_part = -cos(theta)*start_p;
    
    p(i) = real_part + j*sin(theta)*start_p;
    p(i+1) = real_part - j*sin(theta)*start_p;
    
    theta = theta + pi/30;

end

L_4 = place(A_4', C_4', p)';


% Problem 3
C_5 = [ 0, 0, 1, 0, 0;
        0, 0, 0, 0, 1; ]; % Observable
C_6 = [ 1, 0, 0, 0, 0;
        0, 0, 1, 0, 0; ]; % Unobservable
    

    




















