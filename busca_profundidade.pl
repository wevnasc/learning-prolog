folha(2, 1).
folha(3, 1).
folha(4, 1).
folha(5, 1).
folha(6, 2).
folha(7, 2).
folha(8, 4).
folha(9, 5).

raiz(X, Y) :-
    folha(Y, X).

busca_profundidade(X, Y) :-
    raiz(X, Y),
    write(Y),
    nl,
    busca_profundidade(Y, _).
