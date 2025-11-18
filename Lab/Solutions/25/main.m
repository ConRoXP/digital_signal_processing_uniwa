%x1[n]
n= 0:100; % συνολικό εύρος
x1= zeros(size(n));
x1(1:31)= 0:30;  % 0 ≤ n ≤ 30

%Κυκλική ολίσθηση κατά 25 δείγματα
x2= circshift(x1, 25);

%Ετεροσυσχέτιση
[R, lags]= xcorr(x1, x2);

%Θέση μέγιστου
[~, idx_max]= max(R);
lag_max= lags(idx_max);

fprintf('Η ετεροσυσχέτιση μεγ. για lag= %d\n', lag_max);

%Αποτελέσματα
figure;
subplot(3,1,1);
plot(n, x1);
title('Σήμα x_1[n]');
xlabel('n'); grid on;

subplot(3,1,2);
plot(n, x2);
title('Σήμα x_2[n] (25 δείγματα)');
xlabel('n'); grid on;

subplot(3,1,3);
plot(lags, R');
title('Ετεροσυσχέτιση R_{x_1x_2}[k]');
xlabel('lag'); ylabel('R'); grid on;
