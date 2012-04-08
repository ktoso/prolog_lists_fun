% zdefiniować predykat splaszcz, który zamienia dowolnie zagnieżdżoną listę, w listę płaską (której el. nie są listami). (podstawowe rozwiązanie działa bez nawrotów - nie należy naciskać ;)
%
% ?- splaszcz([[a],b,c],X).
% X = [a, b, c] 
%
% ?- splaszcz([[a],[b,[d]],c],X).
% X = [a, b, d, c] 
%
% ?- splaszcz([a,b,c],X).
% X = [a, b, c] 
%
% ?- splaszcz(a,X).
% X = [a]

% impl

splaszcz([], []) :- !.
splaszcz([H|T], Flat) :-
  splaszcz(H, NewH),
  splaszcz(T, NewT),
  append(NewH, NewT, Flat).
splaszcz(A, [A]).
