C_5 = [ 0, 0, 1, 0, 0, 0;
        0, 0, 0, 0, 1, 0; ]; % Observable
C_6 = [ 1, 0, 0, 0, 0, 0;
        0, 0, 1, 0, 0, 0; ]; % Unobservable

% Observable matrix: elevation and travel measured
O_good = [ C_5;
           C_5 * A_4;
           C_5 * A_4^2;
           C_5 * A_4^3;
           C_5 * A_4^4;
           C_5 * A_4^5; ];
% Non observable matrix: pitch and elevation measured
O_bad = [ C_6;
           C_6 * A_4;
           C_6 * A_4^2;
           C_6 * A_4^3;
           C_6 * A_4^4;
           C_6 * A_4^5; ];
