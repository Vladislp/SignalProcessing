function [ t_step, impulse_response ] = ImpulseSignal( input, delta )

  impulse_response = zeros(1, length(input) + length(delta) -1 );
  t_step = 0:length(impulse_response)-1;

  for t_samp = 1:length(input)
    for c_samp = 1:length(delta)
      index = t_samp + c_samp - 1;
    
      value = delta(c_samp) * input(t_samp);
    
      impulse_response(index) = impulse_response(index) + value;
    end
  end
end

function [ time_step, imp_seq ] = imp_sequence( lowerBound, upperBound, shift)
  
  time_step = lowerBound : upperBound;
  
  imp_seq = zeros(size(time_step))
  
  for t_samp = 1:length(time_step)
    if time_step(t_samp) == shift
      imp_seq(t_samp) = 1; 
    end
  end
end
#X = [1,1,1,1];
#H = [1,0,-1];

#[t, Y] = ImpulseSignal( X, H );

#stem(t, Y)