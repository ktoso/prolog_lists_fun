% zdefiniować predykat podzbior(L,Z), który sprawdza, czy Z zawiera się w L, oraz wypisuje wszystkie 
% możliwe podzbiory L (jeżeli Z jest niewiadoma).
%
% ?- podzbior([a,b,c],[c]).
% Yes
%
% ?- podzbior([a,b,c],[a,c]).
% Yes
% ?- podzbior([a,b,c],X).
% X = [a, b, c] ;
%
% X = [a, b] ;
% X = [a, c] ;
% X = [a] ;
% X = [b, c] ;
% X = [b] ;
% X = [c] ;
% X = []

% impl

podzbior([], []).
podzbior([H|T], [H|N]) :-
  podzbior(T, N).
podzbior([_|T], N) :-
  podzbior(T, N).
