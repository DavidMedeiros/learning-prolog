principe(rhodi, A) :- (A >= 844), (A =< 878).
principe(anarawd, A) :- (A >= 879), (A =< 916).
principe(hywel_dda, A) :- (A >= 917), (A =< 950).
principe(lago_ap_idwal, A) :- (A >= 951), (A =< 979).
principe(hywal_ap_Ieuaf, A) :- (A >= 980), (A =< 965).
principe(cadwallon, A) :- (A >= 966), (A =< 986).
principe(maredudd, A) :- (A >= 987), (A =< 999).

:- initialization (main).

main :-
    read(ANO), 
    principe(P, ANO),
    write(P),
    nl,
    halt(0).


