% zdefiniować predykat, powodujący usunięcie 3 pierwszych elementów listy L, w wyniku powstaje lista L1, użyć sklej

odwroc([],[]).
odwroc([H|T],L) :-
  odwroc(T,R),
  sklej(R,[H],L).

sklej([],X,X).
sklej([X|L1],L2,[X|L3]) :-
  sklej(L1,L2,L3).

% impl

remove_first_3(L) :-
  sklej(L,[],[Drop1,Drop2,Drop3|L1]),
  write('result: '),write(L1),nl.
