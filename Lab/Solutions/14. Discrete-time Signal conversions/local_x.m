function y = local_x(m, n0, x0)
    % επιστρέφει x[m] αν m είναι μέσα στο n0, αλλιώς 0
    idx= find(n0 == m, 1);
    if isempty(idx)
        y= 0;
    else
        y= x0(idx);
    endif
endfunction
