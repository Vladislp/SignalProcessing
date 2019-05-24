function [ time_step, imp_seq ] = ramp_sequence( lowerbound, upperBound, shift)
  
  time_step = lowerBound:upperBound;
  
  imp_seq = zeros(size(time_step))
  
  ramp = 0;
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) >= shift
      imp_seq(t_samp) = ramp;
      ramp = ramp + 1; 
      
      time_step(t_step) = time_step(t_step) - shift;
    end
  end
end

[n, imp_seq ] = ramp_sequence( -20, 20, 0);

stem(n, imp_seq)