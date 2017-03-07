folha(2, 1).
folha(3, 1).
folha(4, 1).
folha(5, 1).
folha(6, 2).
folha(7, 2).
folha(8, 4).
folha(9, 5).
folha(10, 6).

busca_largura(X, Y) :-
	folha(Y, X).

busca_largura(X, Y) :-    
	folha(Y, Z),
	busca_largura(X, Z).
