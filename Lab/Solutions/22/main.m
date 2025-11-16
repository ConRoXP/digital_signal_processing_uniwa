%x[n]= n, n= [0, 15]
n= 0:15;
x= n;

%α) DTFT
w= linspace(0, 2*pi);

%DTFT: X(e^{jw}) = Σ x[n] e^{-jwn}
for k= 1:length(w)
  x_dtft= sum(x.* exp(-1j*w(k)*n));
endfor

%β) DFT με Ν= 16
N1= 16;
x16= fft(x, N1);
%w16= 2*pi*(0:N1-1)/N1; %δείγματα DTFT

%γ) DFT με Ν= 32 (+ padding)
N2= 32;
x32= fft(x, N2);
%w32= 2*pi*(0:N2-1)/N2;

%Αποτελέσματα
figure;
hold on;
grid on;

% DTFT
plot(w, abs(x_dtft), 'b');

% DFT N=16
stem(w16, abs(x16), 'r', 'filled');

% DFT N=32
stem(w32, abs(x32), 'y', 'filled');

xlabel('\omega (rad/sample)');
ylabel('|X(\omega)|');
title('DTFT vs DFT Sampling');
legend('DTFT (πυκνό)', 'DFT N=16', 'DFT N=32');
