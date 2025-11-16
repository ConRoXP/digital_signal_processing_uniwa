fr_in= pi/5; %συχνότητα εισόδου
platos_in= 3; %πλάτος εισόδου
ph_in= pi/4; %φάση εισόδου
omega= pi/5; %ω= π/5

%e^{-jω}
ejw= exp(-1j*omega);

%Yπολογισμός Α.Σ.
H= (2-3*ejw+0.1*ejw.^2)/(1-0.3*ejw);

%πλάτος και φάση της Α.Σ.
platosH= abs(H);
phaseH= angle(H);

%πλάτος και φάση εξόδου
platos_out= platos_in* platosH;
phase_out= ph_in+ phaseH;

%έξοδος
n= 0:40; %δείγματα στον χρόνο
y_out= platos_out* cos(omega*n+ phase_out);

%Αποτελέσματα
disp('H(e^{-jω}= '); disp(H);
disp('Πλάτος H= '); disp(platosH);
disp('Φάση H= '); disp(phaseH);
disp('==============');

disp('Πλάτος εισόδου= '); disp(platos_in);
disp('Φάση εισόδου= '); disp(ph_in);
disp('==============');

disp('Πλάτος εξόδου= '); disp(platos_out);
disp('Φάση εξόδου= '); disp(phase_out);
disp('Έξοδος= '); disp(y_out.');
disp('==============');
