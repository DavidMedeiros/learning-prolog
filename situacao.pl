notas(joao, 5.0, 7.0, 8.0).
notas(maria, 6.0, 6.0, 6.0).
notas(joana, 8.0, 5.1, 10.0).
notas(mariana, 9.0, 9.0, 3.0).
notas(cleuza, 8.5, 7.0, 8.6).
notas(jose, 3.5, 3.0, 2.0).
notas(mary, 10.0, 8.0, 7.0).

media(X, M) :- notas(X, N1, N2, N3), M is ((N1 + N2 + N3) / 3).

situacao(X, S) :- media(X, M), (M >= 7), (M =< 10), S = aprovado.
situacao(X, S) :- media(X, M), (M >= 4 ), (M =< 6.9), S = final.
situacao(X, S) :- media(X, M), (M >= 0.0), (M =< 3.9), S = reprovado.

:- initialization main. 

main :- 
    repeat,
    read(ALUNO),
    situacao(ALUNO, S),
    write(S), 
    nl,
    halt(0).
    
