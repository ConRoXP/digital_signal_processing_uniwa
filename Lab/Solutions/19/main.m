%x[n]
n= 0:10;
x= 1./(n+1);

N= length(x);

%Ενέργεια στο χρόνο
E_time= sum(abs(x).^2);

%Ενέργεια από Parseval
X= fft(x);
E_freq= (1/N) * sum(abs(X).^2);

%Aποτελέσματα
disp('Ενέργεια στο χρόνο:');
disp(E_time);

disp('Ενέργεια από Parseval:');
disp(E_freq);
