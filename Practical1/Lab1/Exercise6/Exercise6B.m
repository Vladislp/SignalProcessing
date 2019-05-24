function [ time_step, imp_seq ] = imp_sequence( lowerBound, upperBound, shift)
  
  time_step = lowerBound : upperBound;
  
  imp_seq = zeros(size(time_step))
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) >= shift
      imp_seq(t_samp) = 1; 
    end
  end
end

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

[ n, exp ] = step_sequence( -20, 20, 7 );
[ n, s2 ] = imp_sequence( -20, 20, 5 );
[ n, s3 ] = ramp_sequence( -20, 20, 0 );

stem(n, exl_b)