n= -10:30;

%Είσοδος x[n]= u[n] - u[n-10]
x= zeros(size(n));
x((n>= 0) & (n<= 9))= 1; %1 για 0<=n<=9, αλλιώς 0

%Κρουστική απόκριση h[n]= 0.6^n u[n]
h= (0.6.^n) .* (n>= 0); %0.6^n για n>=0, αλλιώς 0

%y[n]= x[n] * h[n]
y_conv= conv(x, h);

figure;
subplot(3,1,1);
stem(n, x, 'filled');
grid on;
xlabel('n');
ylabel('x[n]');
title('Είσοδος x[n]');

subplot(3,1,2);
stem(n, h, 'filled');
grid on;
xlabel('n');
ylabel('h[n]');
title('Κρουστική απόκριση h[n]');

subplot(3,1,3);
stem(n, y, 'filled');
grid on;
xlabel('n');
ylabel('y[n]');
title('Έξοδος y[n]= x[n] * h[n]');
