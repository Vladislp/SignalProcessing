function [ time_step, imp_seq ] = imp_sequence( lowerBound, upperBound, shift)
  
  time_step = lowerBound:upperBound;
  
  imp_seq = zeros(size(time_step))
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) == shift
      imp_seq(t_samp) = 1; 
    end
  end
end

lowerbound = -10;
upperBound = 10;
shift = 0;

[ time_step, imp_seq ] = imp_sequence( -10, 10, 0 );

stem(t_step, imp_seq)

