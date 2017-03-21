f(X, 0) :- X < 5, !.
f(X, 1) :- X >= 5, X =< 9, !.
f(X, 2) :- X > 9.

par_ou_impar(X) :- X mod 2 =:= 0 -> write(par); write(impar).

d(0).
d(1).
bin :- d(A), d(B), d(C), write([A,B,C]), nl, fail.

joga(ana,volei).
joga(bia,tenis).
joga(ivo,basquete).
joga(eva,volei).
joga(leo,tenis).

%joga(P, X), joga(leo, X), P \= leo
%joga(leo, X), joga(P, X), P \= leo.

num(N,positivo) :- N>0, !.
num(N,negativo) :- N<0, !.
num(0,nulo).
