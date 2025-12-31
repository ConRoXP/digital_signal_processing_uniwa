n= -10:10 %περιοχή του χρόνου

%Είσοδος x[n]
x= zeros(size(n));
x(n== -1)= -1;
x(n== 0)= 1;
x(n== 1)= 2;
x(n== 2)= -1;

%Κρουστική h[n]= |n-3|(u[n] - u[n-6])
h= zeros(size(n));
idx= (n>= 0) & (n<= 5);
h(idx)= abs(n(idx)- 3);

%Συνέλιξη y[n]= x[n] * h[n]
y_conv= conv(x, h);

%Αποτελέσματα
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
