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

C_observer = [1, 0, 0, 0, 0, 0; ...
       0, 0, 1, 0, 0, 0; ...
       0, 0, 0, 0, 1, 0
       ];

eig_wo_integral = eig(A_wo_integral - B_wo_integral * K_wo_integral);

start_p = min(real(eig_wo_integral)) - 10;

[rows_A, ~] = size(A_observer);

p = zeros(rows_A, 1);


j = sqrt(-1);

theta = pi / 50;

for i = 1:2:length(p)
    real_part = -cos(theta) * start_p;

    p(i) = real_part + j * sin(theta) * start_p;
    p(i + 1) = real_part - j * sin(theta) * start_p;

    theta = theta + pi / 30;

end
p = -p;

L = place(A_observer', C_observer', p)';

O = [C_observer; C_observer*A_observer; C_observer*A_observer^2; C_observer*A_observer^3; C_observer*A_observer^4; C_observer*A_observer^5];

