%συντελεστές
h= [1 -2 3 -2 1];
x= [1 3 5 7 5 11 13 17 18 21 12];

%με συνέλιξη στο πεδίο του χρόνου
y_time= conv(x, h);
Y= fft(y_time, N);

%με γινόμενο
N= 512;
H= fft(h, N);
X= fft(x, N);

Y_dtft= X.*H;

%Άξονας συχνότητας
w= linspace(-pi, pi, N); %ω= rad/N
X= fftshift(X);
H= fftshift(H);
Y= fftshift(Y);
Y_dtft= fftshift(Y_dtft);

%Γραφική απεικόνιση μέτρου
figure;
plot(w, abs(Y));
hold on;
plot(w, abs(Y_dtft), '--');
xlabel('ω (rad/N)');
ylabel('Y(eiω)');
title('Πλάτος DTFT');

%Γραφική απεικόνιση φάσης
figure;
plot(w, angle(Y));
hold on;
plot(w, angle(Y_dtft), '--');
xlabel('ω= rad/N');
ylabel('Φάση (rad)');
title('Φάση DTFT');
