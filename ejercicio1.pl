vuelo(ezeiza,natal,200).
vuelo(natal,ezeiza,100).
vuelo(ezeiza,paulo,100).
vuelo(paulo,ezeiza,80).
vuelo(paulo,natal,50).
vuelo(natal,paulo,50).
vuelo(natal,recife,50).
vuelo(recife,natal,50).
vuelo(X, Y, Precio) :- vuelo(X, Z, P1), vuelo(Z, Y, P2), Precio is P1+P2.
idavuelta(X, Y, Precio) :- vuelo(X, Y, P1), vuelo(Y, X, P2), Precio is P1+P2.


resto([_|L],L).

% Definir la relación conc(L1, L2, L3) que se verifique si L3 es la lista 
% obtenida escribiendo 
% los elementos de L2 a continuación de los elementos de L1.

conc([],L,L).
conc([X | L1], L2, [X | L3]) :- conc(L1,L2,L3).


inversa([],[]).
inversa([X | L1], L2):- inversa(L1, L3), append(L3, [X], L2).

palindromo(L) :- inversa(L,L).


todos_iguales([]).
todos_iguales([_]).
todos_iguales([X, X | L]):- todos_iguales([X | L]).

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,X):- 