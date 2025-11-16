b= [3  -1];               %αριθμητής
a= conv([1 -1],[1 -1]);   %(1 - z^-1)^2

disp('Αριθμητής X(z):');
disp(b);

disp('Παρονομαστής X(z):');
disp(a);

%Πόλοι και μηδενικά
Z= roots(b);
P= roots(a);

disp('Μηδενικά:');
disp(Z);

disp('Πόλοι:');
disp(P);

%Διάγραμμα πόλων

figure;
zplane(b, a);
title('Διάγραμμα Πόλων - Μηδενικών του X(z)');
grid on;
