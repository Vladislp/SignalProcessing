[ n, s1 ] = step_sequence( -20, 20, 7 );
[ n, s2 ] = imp_sequence( -20, 20, 5 );
[ n, s3 ] = ramp_sequence( -20, 20, 0 );

exl_b = exp(n-7) - n.*s2 - 3.*s3;
stem(n, exl_b)