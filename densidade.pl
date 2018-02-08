/* 
----------------------------------------------------
--------------- QUESTION DESCRIPTION ---------------
----------------------------------------------------
Key: SyGNVUubA

A ONU está preocupada com o crescimento populacional desenfreado.
Para tal, ela decide fazer uma análise comparativa entre a densidade 
populacional entre países. Usando os dados abaixo faça um programa que, 
dado dois países, verifique qual tem a maior densidade populacional.

População:

brasil 200M
eua 320M
canada 35M
india 1200M
china 1300M
japao 127M
russia 142M
Território:

brasil 8 M km2
eua 9M km2
canada 9M km2
india 3M km2
china 9M km2
japao 1M km2
russia 17M km2 
----------------------------------------------------*/

populacao(brasil, 200).
populacao(eua, 320).
populacao(canada, 35).
populacao(india, 1200).
populacao(china, 1300).
populacao(japao, 127).
populacao(russia, 142).

territorio(brasil, 8).
territorio(eua, 9).
territorio(canada, 9).
territorio(india, 3).
territorio(china, 9).
territorio(japao, 1).
territorio(russia, 17).

densidade(X, Y) :- populacao(X, Z), territorio(X, W), Y is Z / W.

maior_densidade(X, Y, MAIOR) :- densidade(X, D1), densidade(Y, D2), D1 > D2, MAIOR = X. 
maior_densidade(X, Y, MAIOR) :- densidade(X, D1), densidade(Y, D2), D1 < D2, MAIOR = Y. 

:- initialization(main).

main :- 
    read_line_to_codes(user_input, X2),
    string_to_atom(X2, X),
    read_line_to_codes(user_input, Y2),
    string_to_atom(Y2, Y),
    maior_densidade(X, Y, MAIOR),
    write(MAIOR), 
    nl,
    halt(0).
