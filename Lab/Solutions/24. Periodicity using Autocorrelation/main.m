pkg load signal;
%Διάστημα δειγμάτων
N= 64;
n= 0:N-1;

%Σήματα
x= 3*cos(pi*n/4 + pi/12); %x[n]
y= 2*(cos(pi*n/3).^2);   %y[n]

%Αυτοσυσχέτιση με xcorr
[Rx, lags_x]= xcorr(x);
[Ry, lags_y]= xcorr(y);

%Εκτίμηση περιόδου από αυτοσυσχέτιση
%Για x[n]
[~, idx0_x]= max(Rx);
segment_x= Rx(idx0_x+1:end); %θέλουμε θετική μέγιστη μετατόπιση
[~, idx1_x]= max(segment_x);

%Για y[n]
[~, idx0_y]= max(Ry);
segment_y= Ry(idx0_y+1:end);
[~, idx1_y]= max(segment_y);

fprintf('Εκτιμώμενη περίοδος x[n]: %d δειγμάτα\n', idx1_x);
fprintf('Εκτιμώμενη περίοδος y[n]: %d δειγμάτα\n', idx1_y);

%Aποτελέσματα
figure;
subplot(2,2,1);
plot(n, x); grid on;
xlabel('n'); ylabel('x[n]');
title('Σήμα x[n] = 3cos(\pi n/4 + \pi/12)');

subplot(2,2,2);
plot(lags_x, Rx); grid on;
xlabel('lag'); ylabel('R_x[lag]');
title('Αυτοσυσχέτιση R_x[k]');

subplot(2,2,3);
plot(n, y); grid on;
xlabel('n'); ylabel('y[n]');
title('Σήμα y[n] = 2cos^2(\pi n/3)');

subplot(2,2,4);
plot(lags_y, Ry); grid on;
xlabel('lag'); ylabel('R_y[lag]');
title('Αυτοσυσχέτιση R_y[k]');
