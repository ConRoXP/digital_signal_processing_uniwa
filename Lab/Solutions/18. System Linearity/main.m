n= 0:5;

%Είσοδοι
x1= 0.8*n;
x2= cos(n);

%Συντελεστές
a= 2;
b= 3;

%Σύστημα y[n] = 2x[n]
y1= 2*x1;
y2= 2*x2;

%Έλεγχος γραμμικότητας
left= 2*(a*x1 + b*x2);   % T(a x1 + b x2)
right= a*y1 + b*y2;     % a T(x1) + b T(x2)

%Αποτελέσματα
figure;
subplot(3,1,1);
stem(n, x1, 'filled'); hold on;
stem(n, x2, 'r', 'filled');
title('Είσοδοι x_1[n] και x_2[n]');
legend('x_1[n]', 'x_2[n]');
grid on;

subplot(3,1,2);
stem(n, left, 'filled');
title('T(α x_1[n] + β x_2[n])');
grid on;

subplot(3,1,3);
stem(n, right, 'filled');
title('α T(x_1[n]) + β T(x_2[n])');
grid on;
