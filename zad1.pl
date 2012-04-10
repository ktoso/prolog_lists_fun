% zdefiniować predykat, powodujący usunięcie 3 ostatnich elementów listy L, w wyniku powstaje lista L1, użyć sklej

odwroc([],[]).
odwroc([H|T],L) :-
  odwroc(T,R),
  sklej(R,[H],L).

sklej([],X,X).
sklej([X|L1],L2,[X|L3]) :-
  sklej(L1,L2,L3).

% impl

remove_last_3(L, L1) :-
  odwroc(L, R),
  sklej(R,[],[Drop1,Drop2,Drop3|RevTail]),
  odwroc(RevTail, L1).

