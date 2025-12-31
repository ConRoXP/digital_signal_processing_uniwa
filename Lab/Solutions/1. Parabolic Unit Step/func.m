function x= func(n, k, input)
  % Αρχικοποίηση διανύσματος x (μεγέθους n) με μηδενικά
  x= zeros(size(n));

  % Επιλογή ακολουθίας με βάση το input
  if input== 1 %παραβολική
    %x[i]= (n-k)^2 όπου n>=k, αλλιώς 0
    for i= 1:length(n)
      if n(i)>= k
        x(i)= (n(i)-k)^2;
      endif
    endfor

  elseif input== 2 %μοναδιαία κρουστική
    %x[i]= 1 όπου n=k, αλλιώς 0
    x(n==k)= 1;

  elseif input== 3 %μοναδιαία βηματική
    %x[i]= 1 όπου n>=k, αλλιώς 0
    x(n>=k)= 1;

  elseif input== 4 %μοναδιαία ράμπα
    %x[i]= n-k όπου n>=k, αλλιώς 0
    for i= 1:length(n)
      if n(i)>= k
        x(i)= n(i)-k;
      endif
    endfor
  endif
endfunction
