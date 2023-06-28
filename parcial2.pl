invertir([], []).
invertir([[X, Y] | Resto], [[Y, X] | Resultado]) :- invertir(Resto, Resultado).
