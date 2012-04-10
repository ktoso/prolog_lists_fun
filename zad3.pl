% zdefiniować predykat, powodujący usunięcie 3 pierwszych i ostatnich elementów listy L, w wyniku powstaje lista L2, użyć sklej.

%[zad1].
%[zad2].

odwroc([],[]).
odwroc([H|T],L) :-
  odwroc(T,R),
  sklej(R,[H],L).

sklej([],X,X).
sklej([X|L1],L2,[X|L3]) :-
  sklej(L1,L2,L3).

remove_last_3(L, L1) :-
  odwroc(L, R),
  sklej(R,[],[Drop1,Drop2,Drop3|RevTail]),
  odwroc(RevTail, L1).

remove_first_3(L, L1) :-
  sklej(L,[],[Drop1,Drop2,Drop3|L1]).

% impl

remove_both_ends_3(L, L2) :-
  remove_first_3(L, L1),
  remove_last_3(L1, L2),
  write('result: '),write(L2),nl.
