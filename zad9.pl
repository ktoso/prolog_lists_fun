%zdefiniować predykat podziel(L,L1,L2), który dzieli listę L, na dwa fragmenty L1 i L2, mniej więcej równej długości (z dokładnością do jednego el.), np.:
%      ?- podziel([],X,Y).
% 
%      X = []
%      Y = [] ;
% 
%      ?- podziel([1],X,Y).
% 
%      X = [1]
%      Y = [] ;
% 
%      ?- podziel([1,2],X,Y).
% 
%      X = [1]
%      Y = [2] ;
% 
%      ?- podziel([1,2,3],X,Y).
% 
%      X = [1, 3]
%      Y = [2] ;
% 
%      ?- podziel([1,2,3,4],X,Y).
% 
%      X = [1, 3]
%      Y = [2, 4] ;
% 
%      ?- podziel([1,2,3,4,5],X,Y).
% 
%      X = [1, 3, 5]
%      Y = [2, 4] ;
% 
%      ?- podziel([1,2,3,4,5,6,7,8],X,Y).
%
%      X = [1, 3, 5, 7]
%      Y = [2, 4, 6, 8] ;

% impl

podziel([], [], []).
podziel(In, L, R) :-
  append(L, R, In),
  length(L, LenL),
  length(R, LenR),
  (LenL+1 =:= LenR,!; LenL =:= LenR,!).
