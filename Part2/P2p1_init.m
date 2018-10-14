K_f = -g * (m_c * l_c - 2 * m_p * l_h) / (l_h * Vs_astrix);

%%%%%%%%%%% Elevation control
e_reference = 0;

%%%%%%%%%%% Pitch control
K_pp = 12;
K_pd = 2*sqrt(K_pp / K_1);

s = tf('s');
h = (K_1*K_pp)/(s^2 + K_1*K_pd*s + K_1*K_pp);

%step(h)
%&bode(h)