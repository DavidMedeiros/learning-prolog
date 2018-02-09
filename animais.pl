passaro(joao).
peixe(pedro).
minhoca(maria).
pessoa(eu).
gato(miau).

gosta(X, Y) :- passaro(X), minhoca(Y).
gosta(X, Y) :- gato(X), peixe(Y).
gosta(X, Y) :- gato(X), passaro(Y).
gosta(X, Y) :- pessoa(X), gato(Y).
gosta(X, Y) :- gato(X), pessoa(Y).

amigo(X, Y) :- gosta(X, Y), gosta(Y, X).
amigo(gato, eu).

come(X, Y) :- gato(X), gosta(X, Y), not(pessoa(Y)).


