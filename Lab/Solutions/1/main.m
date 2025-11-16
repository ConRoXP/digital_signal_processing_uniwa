n= -10:10; %διάνυσμα n από -10 εώς 10
k= 4; %μετατόπιση k

%κλήση της func για κάθε ακολουθία
p= func(n, k, 1); %παραβολική
d= func(n, k, 2); %μοναδιαία κρουστική
v= func(n, k, 3); %μοναδιαία βηματική
r= func(n, k, 4); %ράμπα

figure;

%Σχεδίαση γραφημάτων
subplot(4,1,1);
stem(n, p, 'filled');
title('Παραβολική ακολουθία');
xlabel('n');
ylabel('p[n-k]');

subplot(4,1,2);
stem(n, d, 'filled');
title('Μοναδιαία κρουστική ακολουθία');
xlabel('n');
ylabel('d[n-k]');

subplot(4,1,3);
stem(n, v, 'filled');
title('Μοναδιαία βηματική ακολουθία');
xlabel('n');
ylabel('v[n-k]');

subplot (4,1,4);
stem(n, r, 'filled');
title('Μοναδιαία ράμπα');
xlabel('n');
ylabel('r[n-k]');
