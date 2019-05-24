function [ time_step, imp_seq ] = imp_sequence( lowerBound, upperBound, shift)
  
  time_step = lowerBound : upperBound;
  
  imp_seq = zeros(size(time_step))
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) == shift
      imp_seq(t_samp) = 1; 
    end
  end
end

[ n, i1 ] = imp_sequence( -20, 20, 0 );
[ n, i2 ] = imp_sequence( -20, 20, 1 );
[ n, i3 ] = imp_sequence( -20, 20, -1 );

ex1_b = 2*i1 - i2 -i3;
stem(n, ex1_b)
