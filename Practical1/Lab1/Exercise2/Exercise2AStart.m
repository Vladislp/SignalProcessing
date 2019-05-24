[ n, i1 ] = imp_sequence( -20, 20, 0 );
[ n, i2 ] = imp_sequence( -20, 20, 1 );
[ n, i3 ] = imp_sequence( -20, 20, -1 );

ex1_b = 2*i1 - i2 -i3;
stem(n, ex1_b)