% zdefiniować predykat przesun(L1,L2), gdzie L2, jest przesuniętą rotacyjnie o jeden element L1, np.:
%
% ?- przesun([1,2,3,4,5,6,7,8],X),przesun(X,Y),przesun(Y,Z).
% X = [2, 3, 4, 5, 6, 7, 8, 1]
% Y = [3, 4, 5, 6, 7, 8, 1, 2]
% Z = [4, 5, 6, 7, 8, 1, 2, 3]

% impl

przesun([H|T], Res) :-
  append(T,[H],Res).
