%Συντελεστές moving average filter 5 σημείων
a= (1/5)*ones(1,5); %[1/5 1/5 1/5 1/5 1/5]

N= 512;
omega= linspace(-pi, pi, N);

%α) H(e^{jω}) από ορισμό DTFT
ejw= exp(-1j*omega); %εδώ παίρνουμε -j
H_dtft= (1/5)*(1+ejw+ejw.^2+ejw.^3+ejw.^4);

%β) H(e^{jω}) από μετασχηματισμό-Z
H_z= H_dtft;

%γ) H(e^{jω}) από freqz
w_f= 0:0.1:2*pi;
[H_f, w_f]= freqz(a, 1, N, 'whole');
H_fshift= fftshift(H_f);

%Αποτελέσματα
figure;
plot(omega, abs(H_dtft));
hold on;
plot(omega, abs(H_fshift), '--');
xlabel('ω= rad/N');
ylabel('|H(e^{j\omega})|');
title('Μέτρο Α.Σ.');

figure;
plot(omega, angle(H_dtft));
hold on;
plot(w_fshift, angle(H_fshift), '--');
xlabel('ω= rad/N');
ylabel('H(e^{j\omega})');
title('Φάση Α.Σ.');
