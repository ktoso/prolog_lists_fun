% zdefiniować parę komplementarnych predykatów nieparzysta(L) oraz parzysta(L) sprawdzajacych czy argument jest listą o odpowiednio nie/parzystej długości.

parzysta([]).
parzysta([_|T]) :- nieparzysta(T).
nieparzysta([_|T]) :- parzysta(T).
