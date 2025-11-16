Nfft= 512; % μέγεθος FFT

% -10 <= n <= 10
n1= -10:10;
x1= 2*cos(3*pi*n1/4); % x[n]

X1= fft(x1, Nfft);    % FFT με zero padding μέχρι 512
X1s= fftshift(X1);    % μεταφορά σε [-π, π]
w= linspace(-pi, pi, Nfft);

figure;
plot(w, abs(X1s)); grid on;
xlabel('\omega (rad/sample)');
ylabel('|X_1(e^{j\omega})|');
title('Φάσμα πλάτουςx[n], [-10,10]');

% -40 <= n <= 40
n2 = -40:40;
x2 = 2*cos(3*pi*n2/4);

X2 = fft(x2, Nfft);
X2s= fftshift(X2);

figure;
plot(w, abs(X2s)); grid on;
xlabel('\omega (rad/sample)');
ylabel('|X_2(e^{j\omega})|');
title('Φάσμα πλάτους x[n] [-40,40]');
