lowerBound = -10;
upperBound = 10;
shift = 0;

[ time_step, imp_seq ] = ramp_sequence( -10, 10, 0 );

stem(time_step, imp_seq)