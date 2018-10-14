%p_backup = p_matrix;

p_matrix = p_matrix(1:i,1:shortest_run);
p_c_fake = zeros(1,shortest_run);
p_c_fake(1000:end) = 45;
hsv = [0 300 300];
j = 0;

for j = 1:i
   
    plot(45-p_matrix(j,2000:end), 'Color', hsv2rgb(hsv/360));
    hold on
    hsv(1) = hsv(1) + 360/i;
    
end

plot(45-p_c(2000:end), 'Color', 'g');



s = cell(1,i+1);

for j = 1:i
   
    s{j} = strcat('K_{pp} = ', num2str(K_pp_array(j)));
    
end

s{i+1} = 'p_c';

legend(s, 'location', 'best');