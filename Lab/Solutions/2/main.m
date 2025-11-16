n= -20:20;

%x[n]= u[n+3]+ 5u[n-15]+ 4u[n+10]
x= ustep(n+3)+ 5*ustep(n-15)+ 4*ustep(n+10);

%Λόγω συμμετρίας του n, x[-n]= αντεστραμμένο x
x_rev= fliplr(x);
x_even= (x+ x_rev)/2;
x_odd= (x- x_rev)/2;

figure;

%Σχεδίαση γραφημάτων
subplot(3,1,1);
stem(n, x, 'filled');
title('Αρχικό x[n]');
xlabel('n');
ylabel('x[n]');

subplot(3,1,2);
stem(n, x_even, 'filled');
title('Άρτιο μέρος xEven[n]');
xlabel('n');
ylabel('xEven[n]');

subplot(3,1,3);
stem(n, x_odd, 'filled');
title('Περιττό μέρος xOdd[n]');
xlabel('n');
ylabel('xOdd[n]');
