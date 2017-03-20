% país(Nome, Área, População)
país(brasil, 9, 130).
país(china, 12, 1800).
país(eua,9, 230).
país(índia,3, 450).

dens(D,P) :- pais(P,A,X), D is X/A.

país(índia, _, P1),país(china, _, P2), P1 > P2.

%func(Código, Nome, Salário)
func(4, leo, 2500.35).
func(5, clô, 1800.00).
func(6, gil, 1100.35).

%dep(Código, Nome)
dep(4, lia).
dep(4, nóe).
dep(5, eli).

func(_,N, S), S > 1500.00, S < 3000.00

func(C,N,S), not(dep(C, _)), S < 1200.00

func(C,N,S), dep(C,_), S > 1700.00

% filme(Título, Gênero, Ano, Duração)

filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2016, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', comédia, 2016, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

longo(N) :- filme(N,_,_,D), D > 150.
lancamento(N) :- filme(N,_,Y,_), Y >= 2016.

%pessoa(nome, sexo, idade, altura, peso)

pessoa(ana, fem, 23, 1.55, 56.0).
pessoa(bia, fem, 19, 1.71, 61.3).
pessoa(ivo, masc, 22, 1.80, 70.5).
pessoa(lia, fem, 17, 1.85, 57.3).
pessoa(eva, fem, 28, 1.75,68.7).
pessoa(ary, masc, 25, 1.72, 68.9).

pessoa(N,fem,I,_,_), I > 25.
pessoa(N,_,_,A,P), A >= 1.70, P < 65.0
pessoa(N1,masc,_,A1,_), pessoa(N2,fem,_,A2,_), A1 > A2.

modelo(N) :- pessoa(N, fem, I, A, P), P < 62.1*A-44.7, A > 1.70, I < 25.

