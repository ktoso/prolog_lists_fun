% zdefiniować predykat przeloz(L1,L2), który zamienia listę liczb (max. 0-9), na listę słów:
%
% ?- przeloz([1,4,7],X).
% X = [jeden, cztery, siedem] ;
%
% ?- przeloz(A,[dwa,osiem,zero]).
% A = [2, 8, 0] ;
%
% posługując się faktami:
%
znaczy(0,zero).   znaczy(1,jeden).
znaczy(2,dwa).    znaczy(3,trzy).
znaczy(4,cztery). znaczy(5,piec).
znaczy(6,szesc).  znaczy(7,siedem).
znaczy(8,osiem).  znaczy(9,dziewiec).

% impl

% as word
as_w(N. W) :-
  arg(W, znaczy, N).

% as number
%as_n(W) :-
%  arg(1, )

przeloz([], []) :- true,!.
przeloz([HN|N], [HW,W]) :-
  znaczy(HN, HW),
  przeloz(N, W).
