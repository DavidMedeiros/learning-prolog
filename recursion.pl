soma(1,1) :- true.
soma(N, S) :- N > 1, Aux is (N-1), soma(Aux, Parcial), S is (N + Parcial).

fatorial(0, 1).
fatorial(X, Fat) :- X > 0, Aux is (X-1), fatorial(Aux, Parcial), Fat is (X * Parcial).
