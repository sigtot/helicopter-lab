A_wo_integral = [0, 1, 0; 0, 0, 0; 0, 0, 0];
B_wo_integral = [0, 0; 0, K_1; K_2, 0];
C_wo_integral = [1, 0, 0; 0, 0, 1];

q1 = 10000; %4 - Pitch
q2 = 1; %4 - Pitch rate
q3 = 10000; %14 - Elevation rate

Q_wo_integral = diag([q1, q2, q3]);

r1 = 75; %1 - Vs
r2 = 100; %20 - Vd

R = diag([r1, r2]);

K_wo_integral = lqr(A_wo_integral, B_wo_integral, Q_wo_integral, R);

P_wo_integral = inv(C_wo_integral * inv(B_wo_integral * K_wo_integral - A_wo_integral) * B_wo_integral);
P = P_wo_integral;
