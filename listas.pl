%Listas com prolog

%exibição de um item
[_,_,X|_] = [a,b,c,d,e].

% exibe(L) : exibe os elementos da lista L 
exibe([]) :- nl.
exibe([X|Y]) :- write(X), exibe(Y).

% membro(X,L) : o item X é membro da lista L

membro(X, [X|_]).
membro(X, [_|Y]) :- membro(X, Y).  

% anexa(A,B,C): A anexado com B dá C 

anexa([], B, B).
anexa([X|A], B, [X|C]) :- anexa(A, B, C).
