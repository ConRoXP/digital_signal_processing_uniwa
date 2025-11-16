% Περιοχή χρόνου
n= -5:10;
nz= -10:20;

%x[n]
x= zeros(size(n));
x(n== -1)= 4;
x(n==  0)= 9;
x(n==  2)= -2;

%Ορισμός y[n]
y= zeros(size(n));
idx= (n >= -2) & (n <= 2);
y(idx)= n(idx)/6;

%Συνέλιξη με Toeplitz
Tx = toeplitz([x(:); zeros(length(y)-1,1)], [x(1) zeros(1,length(y)-1)]);
z_toe = Tx * y(:);
z_toe = z_toe(1:length(x)+length(y)-1);

%Επαλήθευση με conv
z_conv= conv(x, y);

%Αποτελέσματα
figure;
subplot(3,1,1);
stem(n, x, 'filled'); grid on;
title('x[n]');
xlabel('n'); ylabel('x');

subplot(3,1,2);
stem(n, y, 'filled'); grid on;
title('y[n]');
xlabel('n'); ylabel('y');

subplot(3,1,3);
stem(nz, z_toe, 'filled'); hold on;
stem(nz, z_conv, 'r--');
grid on;
title('z[n] = x[n] * y[n]');
xlabel('n'); ylabel('z');
