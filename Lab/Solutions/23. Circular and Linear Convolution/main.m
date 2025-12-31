N= 6;

%x[n] και w[n] σε μορφή διανυσμάτων
x= [3 1 0 0 0 -1];
w= [1 0 1 -2 0 0];

%1)
disp('Κυκλική συνέλιξη:');
%α)στο πεδίο χρόνο
y_time= zeros(1, N);
for n= 0:N-1
  for m= 0:N-1
    k= mod(n-m, N);
    y_time(n+1)= y_time(n+1)+ x(m+1)*w(k+1);
  endfor
endfor

y_time

%β)με χρήση fft
X= fft(x, N);
W= fft(w, N);
Y= X.*W;
y_fft= round(real(ifft(Y)));

y_fft

%2)
disp('===========================');
disp('Για 9 σημεία:');
%α) στο πεδίο του χρόνου
%padding για να πάμε στα 9 σημεία
N= 9;
x= [3 1 0 0 0 -1 0 0 0];
w= [1 0 1 -2 0 0 0 0 0];

y_time= zeros(1, N);
for n= 0:N-1
  for m= 0:N-1
    k= mod(n-m, N);
    y_time(n+1)= y_time(n+1)+ x(m+1)*w(k+1);
  endfor
endfor

y_time

%β)με χρήση fft
X= fft(x, N);
W= fft(w, N);
Y= X.*W;
y_fft= round(real(ifft(Y)));

y_fft

%3)
disp('===========================');
disp('Γραμμική συνέλιξη:');
%α) στο πεδίο του χρόνου
x= [3 1 0 0 0 -1];
w= [1 0 1 -2];
Lx= length(x);
Lw= length(w);
L= Lx + Lw - 1;

y_time= zeros(1, L);

for n= 0:L-1
  for m= 0:Lx-1
    k= n - m;
    if k>= 0 && k< Lw
      y_time(n+1)= y_time(n+1) + x(m+1)*w(k+1);
    endif
  endfor
endfor

y_time

%β) με χρήση fft
N= 9;   %N= Lx+Lw-1

X= fft(x, N);
W= fft(w, N);

Y= X.*W;
y_fft= round(real(ifft(Y)))
