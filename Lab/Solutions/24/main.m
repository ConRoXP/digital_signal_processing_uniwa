% Διάστημα δειγμάτων
N= 64;
n= 0:N-1;

%Σήματα
x = 3*cos(pi*n/4 + pi/12); % x[n]
y = 2*(cos(pi*n/3).^2);   % y[n]= 2 cos^2(pi n/3)

%Αυτοσυσχέτιση με xcorr
[Rx, lags_x]= xcorr(x);
[Ry, lags_y]= xcorr(y);

% Εκτίμηση περιόδου από αυτοσυσχέτιση
%Για x[n]
[~, idx0_x]= max(Rx);           % μέγιστο στο lag=0
segment_x= Rx(idx0_x+1:end);  % μόνο θετικά lags
[~, idx1_x]= max(segment_x);    % πρώτο μεγάλο peak
N0_x_est= idx1_x;            % διαφορά δεικτών = περίοδος

%Για y[n]
[~, idx0_y]= max(Ry);
segment_y= Ry(idx0_y+1:end);
[~, idx1_y]= max(segment_y);
N0_y_est= idx1_y;

fprintf('Εκτιμώμενη περίοδος x[n]: %d δειγμάτα\n', N0_x_est);
fprintf('Εκτιμώμενη περίοδος y[n]: %d δειγμάτα\n', N0_y_est);

%Aποτελέσματα
figure;
subplot(2,2,1);
stem(n, x, 'filled'); grid on;
xlabel('n'); ylabel('x[n]');
title('Σήμα x[n] = 3cos(\pi n/4 + \pi/12)');

subplot(2,2,2);
stem(lags_x, Rx, 'filled'); grid on;
xlabel('lag'); ylabel('R_x[lag]');
title('Αυτοσυσχέτιση R_x[k]');

subplot(2,2,3);
stem(n, y, 'filled'); grid on;
xlabel('n'); ylabel('y[n]');
title('Σήμα y[n] = 2cos^2(\pi n/3)');

subplot(2,2,4);
stem(lags_y, Ry, 'filled'); grid on;
xlabel('lag'); ylabel('R_y[lag]');
title('Αυτοσυσχέτιση R_y[k]');
