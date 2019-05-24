function [ time_step, imp_seq ] = imp_sequence( lowerbound, upperBound, shift)
  
  time_step = lowerbound:upperBound;
  
  imp_seq = zeros(size(time_step))
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) == shift
      imp_seq(t_samp) = 1; 
    endif
  endfor
endfunction
