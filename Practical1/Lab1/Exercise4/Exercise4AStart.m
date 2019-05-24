[ n, i1 ] = step_sequence( -20, 20, 0 );
[ n, i2 ] = step_sequence( -20, 20, 1 );
[ n, i3 ] = step_sequence( -20, 20, 4 );

ex1_a = i1 - 2.*i2 + i3;
stem(n, ex1_a)