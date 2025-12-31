n= 0:32; %0 έως 32 -> 4 περίοδοι

%α) 𝑥1[𝑛] = 0338/1000*𝑐𝑜𝑠(𝜋𝑛/4 + 𝜋/12)
A= 0.338;
omega= pi/4;
phase= pi/12;

x1= AM*cos(omega*n+ phase);
N= 8; %θεμελιώδης περίοδος

%μετατόπιση σήματος κατά 1 περίοδο
%για επαλήθευση
x1_shift= A*cos(omega*(n+N1)+ phase);

figure;
stem(n, x1, 'filled');
hold on;
stem(n, x1_shift, 'r--');
grid on;

xlabel('n');
ylabel('x_1[n]');
title('Περιοδικότητα x1');

%β) 𝑥2[𝑛] = 2 𝑐𝑜𝑠^2(𝜋/6 𝑛 + 𝜋0338/1000)
A= 2;
omega= pi/6;
phase= 0.338/pi;

x2= A* cos(omega*n+ phase.^2);
N= 6;

%μετατόπιση για επαλήθευση
x2_shift= A*cos(omega*(n+N)+ phase).^2;

figure;
stem(n, x2, 'filled');
hold on;
stem(n, x2_shift, 'r--');
grid on;

xlabel('n');
ylabel('x_2[n]');
title('Περιοδικότητα x2');

%γ) 𝑥3[𝑛] = 𝑒^(𝑗𝜋𝑛/5) + 𝑒^(−𝑗𝜋𝑛/5)
x3= exp(1j*pi*n/5)+ exp(-1j*pi*n/5);
N= 10;

x3_shift= exp(1j*pi*(n+N)/5)+ exp(-1j*pi*(n+N)/5);

figure;
stem(n, real(x3), 'filled');
hold on;
stem(n, real(x3_shift), 'r--');
grid on;

xlabel('n');
ylabel('x_3[n]');
title('Περιοδικότητα x3');
