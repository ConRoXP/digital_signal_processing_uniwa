%S1
b1= [0 0.1 0 0.1];
a1= [2 1 0.5];

%S2
b2= [2 0 1];
a2= 1;

%S3
b3= [1 0.4 -1.4];
a3= [1 0 -0.5 0.8];

%S1+S2 - παράλληλη σύνδεση
c1= conv(b1, a2);   % αριθμητής1
c2= conv(b2, a1);   % αριθμητής2

%μετατροπή στο ίδιο μήκος
L= max(length(c1), length(c2));
c1= [c1, zeros(1, L- length(c1))];
c2= [c2, zeros(1, L- length(c2))];

Bpar = c1 + c2;      %αριθμητής S1,2
Apar = conv(a1, a2); %παρονομαστής S1,2

%Σύνδεση S3(S1+S2)
b_total = conv(b3, Bpar);
a_total = conv(a3, Apar);

%Συνολική κρουστική απόκριση
N= 60;
[h_total, n]= impz(b_total, a_total, N);

stem(n, h_total, 'filled');
grid on;
xlabel('n');
ylabel('h_total[n]');
title('Συνολική κρουστική απόκριση');
