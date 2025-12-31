%Συντελεστές σημάτων
x= [1 2 0 1];
h= [2 2 1 1];
N= 4;
%κυκλική συνέλιξη:

%α) στο πεδίο του χρόνου
y_time= zeros(1, N);

for n0= 0:N-1
  for m= 0:N-1
    k= mod(n0- m, N);
    y_time(n0+1)= y_time(n0+1)+ x(m+1)* h(k+1);
  endfor
endfor

y_time

%β) στο πεδίο συχνοτήτων
%β1) με fft
%μετασχηματισμός γραμμών και στηλών
X= fft(x, N);
H= fft(h, N);

Y= X.*H; %πολ/μος στοιχείων
y_fft= ifft(Y)

%β2) χωρίς fft
%πίνακας DFT (W) 4x4
x_col= x.';
h_col= h.';

i= (0:N-1).'; %στήλες
j= 0:N-1;     %γραμμές
W= exp(-1j*2*pi/N * (i*j)); %W(k,n)= e^(-j2πkn/N)

X= W*x_col;
H= W*h_col;
Y= X.*H; %DFT[x]*DFT[h]

y= real((1/N)*conj(W).'*Y).'
