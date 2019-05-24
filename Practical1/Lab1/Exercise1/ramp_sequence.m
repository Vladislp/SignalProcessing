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

lowerBound = -10;
upperBound = 10;
shift = 0;

[ time_step, imp_seq ] = ramp_sequence( -10, 10, 0 );

stem(t_step, imp_seq)