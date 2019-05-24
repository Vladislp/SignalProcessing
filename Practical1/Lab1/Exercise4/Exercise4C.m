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

[ time_step, imp_seq ] = step_sequence( -20, 20, -0.5 );

stem(t_step, imp_seq)