pkg load signal;

a= [0 2 3 -1];
b= [1 -5 8 -4];

[r, p, k]= residue(a, b);
disp('A, B, Γ: '); disp(r);
disp('Πόλοι: '); disp(p);
