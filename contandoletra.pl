iniciovogal([X|_], 's') :- X = 'a'; X = 'e'; X = 'i' ; X = 'o'; X = 'u'.
iniciovogal(_, 'n').

:- initialization main.

main :-
  read_line_to_codes(user_input, A1),
  string_to_atom(A1, B1),
  atom_chars(B1, Palavra1),
  iniciovogal(Palavra1, R),
  write(R), nl,
  read_line_to_codes(user_input, A2),
  string_to_atom(A2, B2),
  atom_chars(B2, Palavra2),
  iniciovogal(Palavra2, R1),
  write(R1), nl,
  read_line_to_codes(user_input, A3),
  string_to_atom(A3, B3),
  atom_chars(B3, Palavra3),
  iniciovogal(Palavra3, R2),
  write(R2), nl,
  read_line_to_codes(user_input, A4),
  string_to_atom(A4, B4),
  atom_chars(B4, Palavra4),
  iniciovogal(Palavra4, R3),
  write(R3), nl,
  read_line_to_codes(user_input, A5),
  string_to_atom(A5, B5),
  atom_chars(B5, Palavra5),
  iniciovogal(Palavra5, R4),
  write(R4), nl.
