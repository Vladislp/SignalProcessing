[ n, i1 ] = imp_sequence( -20, 20, 1 );
[ n, i2 ] = imp_sequence( -20, 20, 0 );
[ n, i3 ] = step_sequence( -20, 20, 1 );
[ n, i4 ] = step_sequence( -20, 20, 2 );

ex1_a = i1 - i2 + i3 - i4;
stem(n, ex1_a)