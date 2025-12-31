pkg load signal;

x= [1 -1 2 -2];
N= 4;

%======== DFT ========
%α) με fft
x_dft= fft(x, N);

%β) με dftmax
M= dftmtx(N); %δημιουργία 4x4 πίνακα DFT
x_mtx= M*x.'; %x.' -> στήλη

%======== iDFT ========
%α) με ifft
x_idft= ifft(x_fft);

%β) χωρίς ifft μέσω πρώτης σχέσης
x_idft1= (1/N)* (fft(conj(x_fft), N));

%γ) χωρίς ifft μέσω δεύτερης σχέσης
xcol= x_fft.';
x_mtx_col= (1/N)*M'*xcol;
x_idft2= x_mtx_col.';

%======== Ενέργεια x[n]========
%α) στο πεδίο του χρόνου
E_time= sum(abs(x).^2);

%β) στο πεδίο της συχνότητας
E_freq= (1/N)* sum(abs(x_dft).^2);

%Αποτελέσματα
disp('α) DFT με fft:');
disp(real(x_dft));
disp('β) DFT με dftmx:');
disp(real(x_mtx.'));
disp('====================')

disp('α) iDFT με ifft:');
disp(real(x_idft));
disp('β) iDFT με πρώτη σχέση:');
disp(real(x_idft1));
disp('γ) iDFT με δεύτερη σχέση:');
disp(real(x_idft2));
disp('====================')

disp('α) Ενέργεια στον χρόνο:');
disp(E_time);
disp('β) Ενέργεια στην συχνότητα:');
disp(E_freq);
