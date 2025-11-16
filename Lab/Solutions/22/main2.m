%x[n]= n, 0<=n<=15
n= 0:15;
x= n;

%DTFT με πυκνή δειγματοληψία στο
Nw = 4000;   %πολύ πυκνό πλέγμα συχνοτήτων
w  = linspace(0, 2*pi, Nw); %0<= ω<= 2π
X_dtft = zeros(size(w));

%Υπολογισμός DTFT: X(e^{jω})= Σ x[n] e^{-j ω n}
for k = 1:length(w)
    X_dtft(k) = sum( x .* exp(-1j*w(k)*n) );
endfor

%DFT με N= 16
N1= 16;
X16= fft(x, N1);    % εδώ N1 = length(x), άρα χωρίς zero padding
w16= 2*pi*(0:N1-1)/N1;  % ω_k = 2πk/N1

%DFT με N= 32
N2= 32;
X32= fft(x, N2);  %zero padding, επειδή N2> length(x)
w32= 2*pi*(0:N2-1)/N2;

%Aποτελέσματα
figure;
hold on;
grid on;

%DTFT (συνεχής καμπύλη)
plot(w, abs(X_dtft));

%DFT N=16
stem(w16, abs(X16), 'r', 'filled');

%DFT N=32
stem(w32, abs(X32), 'y', 'filled');
xlabel('\omega (rad/sample)');
ylabel('|X(\omega)|');
title('DTFT και DFT (N=16, N=32) του x[n] = n, 0 \le n \le 15');
legend('DTFT (πυκνό)', 'DFT N=16', 'DFT N=32');
