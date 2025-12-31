N= 1024; %ανάλυση πλέγματος συχνοτήτων
W= linspace(-pi, pi, N); %ω= rad/N
eiw= exp(1i*W);

%εκφώνηση
H= (1+2*eiw)./(1-0.2*eiw);

%υπολογισμός μερών
H_real= real(H);
H_imag= imag(H);
H_met= abs(H);
H_phase= angle(H);

%γραφικές παραστάσεις
figure;
subplot(4,1,1);
plot(W, H_real);
xlabel('ω= rad/N');
ylabel('H(eiω)');
title('Πραγματικό Μέρος');

subplot(4,1,2);
plot(W, H_imag);
xlabel('ω= rad/N');
ylabel('H(eiω)');
title('Φανταστικό Μέρος');

subplot(4,1,3);
plot(W, H_met);
xlabel('ω= rad/N');
ylabel('H(eiω)');
title('Μέτρο');

subplot(4,1,4);
plot(W, H_phase);
xlabel('ω= rad/N');
ylabel('H(eiω)');
title('Φάση');
