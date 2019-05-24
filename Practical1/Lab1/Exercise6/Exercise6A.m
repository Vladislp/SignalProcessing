function [ time_step, imp_seq ] = ramp_sequence( lowerBound, upperBound, shift)
  
  time_step = lowerBound:upperBound;
  
  imp_seq = zeros(size(time_step))
  
  ramp = 0;
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) >= shift
      imp_seq(t_samp) = ramp;
      ramp = ramp + 1; 
      
      time_step(t_samp) = time_step(t_samp) - shift;
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

[ n, i1 ] = ramp_sequence( -20, 20, 2 );
[ n, i2 ] = step_sequence( -20, 20, 0 );
[ n, i3 ] = step_sequence( -20, 20, 4 );

ex1_a = i1 - 2.*i2 - n.*i3;
stem(n, ex1_a)
