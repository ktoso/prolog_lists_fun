% zdefiniować predykat palindrom(L), L jest palindromem, jeżeli czyta się tak samo od przodu i tyłu, np. [a,l,a], [m,a,d,a,m]. (podpowiedź: można nie/użyć odwroc.)

odwroc(L1,L2) :- odwroc(L1,[],L2).
odwroc([],L,L).
odwroc([X|L],L2,L3) :- odwroc(L,[X|L2],L3).

% impl
palindrom(L) :-
  odwroc(L, L). % match oznacza ze jest palindrom
