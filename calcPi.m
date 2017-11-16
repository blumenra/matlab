
function[est_pi,error,d]=calcPi(n)
    
    printf("helper of n: %f\n", helper(n))
    
    est_pi = (2^n)*sqrt(2-helper(n-1));
    error = abs(pi - est_pi);
    
    tmp = getRelativeError(pi, est_pi);
    printf("tmp = %f\n", tmp);
    d = 0;
    while tmp < 1,
      
      tmp = tmp*10;
      d = d+1;
      
    endwhile
  
endfunction

function val = helper(n)
  
  if n == 0,
    val = 0;
  else
    val = sqrt(2 + helper(n-1));
  endif
    
endfunction

function ret = getRelativeError(x, x0)
  
  ret = abs(x-x0)/abs(x);
  
endfunction