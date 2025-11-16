x= [1 2 3 4 5 6 7 8 9 10];
h= [1 2 3 4];

Nx= length(x);
Nh= length(h);

%Μήκος τμήματος == μήκος h
L= Nh;
overlap= Nh-1;

%Μήκος εξόδου
N_total= Nx+ Nh- 1;
y_overlap= zeros(1, N_total);

i= 1; %θέση στο x

%Για κάθε τμήμα x, κάνουμε συνέλιξη με το σήμα h
%και τα ενώνουμε
while i<= Nx
  x_block= x(i:min(i+L-1, Nx));

  y_block= conv(x_block, h);

  out_start= i; %θέση αρχής τμήματος
  out_end= i+length(y_block)-1; %θέση τέλους τμήματος

  %ένωση των μπλοκ μετά την συνέλιξη
  y_overlap(out_start: out_end)= y_overlap(out_start: out_end)+ y_block;

  i= i+L; %μετατόπιση δείκτη στο επόμενο τμήμα
endwhile

%Απλή συνέλιξη (χωρίς overlap)
y_conv= conv(x, h);

%Αποτελέσματα
disp('Αποτέλεσμα Overlap–Add:');
disp(y_overlap);
disp('========================');
disp('Αποτέλεσμα conv(x,h):');
disp(y_conv);
