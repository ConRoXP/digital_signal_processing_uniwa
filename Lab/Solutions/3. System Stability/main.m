%Συντελεστές H(z)
b= [1 -0.8];
a= [1 1.15 0.9];

N= 50; %μήκος κρουστικής
n= 0:N-1;

%Kρουστική απόκριση
x= [1 zeros(1, N-1)]; %δ(n)
h= filter(b, a, x); %κρουστική απόκριση

figure;
stem(n, h, 'filled');
xlabel('n');
ylabel('H[n]');
title('Κρουστική απόκριση συστήματος');
grid on;

%Έλεγχος ευστάθειας μέσω κρουστικής
sum(abs(h))
figure;
stem(n, cumsum(abs(h)), 'filled');
xlabel('n');
ylabel('Άθροισμα');
title('Μερικά αθροίσματα |h[n]|');
grid on;

%Έλεγχος ευστάθειας μέσω πόλων
figure;
zplane(b, a);
title('Διάγραμμα πόλων-μηδενικών');
grid on;
