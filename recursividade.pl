%potencia(base, expoente, potência)

pot(_, 0, 1).
pot(B, N, P) :-
	N > 0,
    M is N - 1,
    pot(B, M, R),
	P is B * R.

fat(0, 1).
fat(N, F) :-
    N > 0,
    M is N-1,
    fat(M, R),
    F is N*R.

pai(adão,cain).
pai(adão,abel).
pai(adão,seth).
pai(seth,enos).
ancestral(X,Y) :- pai(X,Y).
ancestral(X,Y) :- pai(X,Z), ancestral(Z,Y).

sobre(b,a).
sobre(d,b).
sobre(d,c).
acima(X,Y) :- sobre(X,Y).
acima(X,Y) :- sobre(X,Z), acima(Z,Y).

produto(0,_,0).
produto(N,M,P) :- 
    N > 0,
    X is N-1,
    produto(X, M, P1),
    P is M + P1.

bin(0).
bin(N) :-
    N > 0,
    M is N // 2,
    bin(M),
    R is N mod 2,
    write(R).




