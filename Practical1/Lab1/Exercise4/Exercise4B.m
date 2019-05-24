function [ time_step, imp_seq ] = imp_sequence( lowerBound, upperBound, shift)
  
  time_step = lowerBound : upperBound;
  
  imp_seq = zeros(size(time_step))
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) == shift
      imp_seq(t_samp) = 1; 
    end
  end
end

function [ time_step, imp_seq ] = step_sequence( lowerBound, upperBound, shift)
  
  time_step = lowerBound:upperBound;
  
  imp_seq = zeros(size(time_step))
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) >= shift
      imp_seq(t_samp) = 1; 
    end
  end
end
lowerBound = -20;
upperBound = 20;
shift = 0;

[ n, i1 ] = imp_sequence( -20, 20, 1 );
[ n, i2 ] = imp_sequence( -20, 20, 0 );
[ n, i3 ] = step_sequence( -20, 20, 1 );
[ n, i4 ] = step_sequence( -20, 20, 2 );

ex1_a = i1 - i2 + i3 - i4;
stem(n, ex1_a)
