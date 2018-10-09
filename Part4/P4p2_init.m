%% Part 4

A_4 = [0, 1, 0, 0, 0, 0; ...
       0, 0, 0, 0, 0, 0; ...
       0, 0, 0, 1, 0, 0; ...
       0, 0, 0, 0, 0, 0; ...
       0, 0, 0, 0, 0, 1; ...
       K_3, 0, 0, 0, 0, 0
       ];

B_4 = [
       0, 0; ...
       0, K_1; ...
       0, 0; ...
       K_2, 0; ...
       0, 0; ...
       0, 0
       ];

C_4 = [1, 0, 0, 0, 0, 0; ...
       0, 0, 1, 0, 0, 0; ...
       0, 0, 0, 0, 1, 0
       ];

q1 = 150; %4
q2 = 10; %4
q3 = 150; %14
q4 = 10; %20
q5 = 2; %200
q6 = 0;

Q_4 = diag([q1, q2, q3, q4, q5, q6]);
K_4 = lqr(A_4, B_4, Q_4, R);

start_p = min(real(eig(A_3 - B_3 * K))) - 1;

[rows_A, ~] = size(A_3);

p = zeros(rows_A, 1);

j = sqrt(-1);

theta = pi / 50;

for i = 1:2:length(p)
    real_part = -cos(theta) * start_p;

    p(i) = real_part + j * sin(theta) * start_p;
    p(i + 1) = real_part - j * sin(theta) * start_p;

    theta = theta + pi / 30;

end

L_4 = place(A_4', C_4', p)';