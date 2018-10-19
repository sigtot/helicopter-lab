run P3p2_init;

A_w_integral = [0, 1, 0, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0; 0, 0, 1, 0, 0];
B_w_integral = [0, 0; 0, K_1; K_2, 0; 0, 0; 0, 0];
C_w_integral = [1, 0, 0, 0, 0; 0, 0, 1, 0, 0];
F = [0, 0; 0, 0; 0, 0; -1, 0; 0, -1];

q4 = 100; %20 - Gamma: p - p_c
q5 = 10000; %200 - Eta: e_dot - e_dot_c

Q_w_integral = diag([q1, q2, q3, q4, q5]);

K_w_integral = lqr(A_w_integral, B_w_integral, Q_w_integral, R);

% Using the same P matrix as in previous problem

P_w_integral = P_wo_integral;