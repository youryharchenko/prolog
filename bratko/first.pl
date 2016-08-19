:- module(first,[
		fib/2,
		fib2/2,
		fact/2
	]).
	
:- dynamic fib2/2.
	
fib(1, 1).
fib(2, 1).
fib(N, F) :-
	N > 2,
	N1 is N - 1, fib(N1, F1),
	N2 is N - 2, fib(N2, F2),
	F is F1 + F2.
	
fib2(1, 1).
fib2(2, 1).
fib2(N, F) :-
	N > 2,
	N1 is N - 1, fib2(N1, F1),
	N2 is N - 2, fib2(N2, F2),
	F is F1 + F2,
	asserta(fib2(N, F)).
	
fact(0, 1).
fact(1, 1).
fact(N, F) :-
	N > 1,
	N1 is N -1,
	fact(N1, F1),
	F is F1 * N. 

