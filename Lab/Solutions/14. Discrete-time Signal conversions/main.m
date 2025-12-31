%Αρχικό σήμα x[n] με n0 [-2, 10]
n0= -2:10;
x0= [1 2 3 4 5 6 7 6 5 4 3 2 1];

%Περιοχή χρόνου σχεδίασης
n= -10:20;

%Συνάρτηση που επιστρέφει το x[n] για οποιοδήποτε n (αν έξω από [-2,10] => 0)
xn= @(nn) arrayfun(@(m) local_x(m, n0, x0), nn);

%a) x[n]
xa= xn(n);

%b) x[n - 5]
xb= xn(n-5);

%c) x[n + 4]
xc= xn(n+4);

%d) x[-n]
xd= xn(-n);

%e) x[n/2]  (για περιττά n, το n/2 δεν είναι ακέραιο => έξοδος 0)
xe= xn(n/2);

%f) x[2n]
xf= xn(2*n);

%Σχεδίαση γραφικών παραστάσεων
figure;
subplot(3,2,1);
stem(n, xa, 'filled'); grid on;
title('a) x[n]');
xlabel('n'); ylabel('x[n]');

subplot(3,2,2);
stem(n, xb, 'filled'); grid on;
title('b) x[n - 5]');
xlabel('n'); ylabel('x[n-5]');

subplot(3,2,3);
stem(n, xc, 'filled'); grid on;
title('c) x[n + 4]');
xlabel('n'); ylabel('x[n+4]');

subplot(3,2,4);
stem(n, xd, 'filled'); grid on;
title('d) x[-n]');
xlabel('n'); ylabel('x[-n]');

subplot(3,2,5);
stem(n, xe, 'filled'); grid on;
title('e) x[n/2]');
xlabel('n'); ylabel('x[n/2]');

subplot(3,2,6);
stem(n, xf, 'filled'); grid on;
title('f) x[2n]');
xlabel('n'); ylabel('x[2n]');
