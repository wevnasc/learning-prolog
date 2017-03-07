% Fatos
progenitor(maria, josé).
progenitor(joão, josé).
progenitor(joão, ana).
progenitor(josé, júlia).
progenitor(josé, íris).
progenitor(íris, jorge).
progenitor(ana, fernando).

masculino(joão).
masculino(josé).
masculino(jorge).


feminino(maria).
feminino(júlia).
feminino(ana).
feminino(íris).

% Regras

filho(Y, X) :- 
    progenitor(X, Y).

mãe(X, Y) :-
    progenitor(X, Y),
    feminino(X).

avô(X, Z) :-
    progenitor(X, Y),
    progenitor(Y, Z).

irmã(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    feminino(X),
    dif(X, Y).

tio(X, Y) :-
    progenitor(Z, Y),
    progenitor(H, Z),
    progenitor(H, X).

prima(X, Y) :-
    progenitor(Z1, X),
    progenitor(Z2, Y),
    progenitor(Z, Z1),
    progenitor(Z, Z2),
    feminino(X).
    
descendente(X, Z) :-
    progenitor(X, Z).

descendente(X, Z) :- 
    progenitor(X, Y),
    antepassado(Y, Z).
