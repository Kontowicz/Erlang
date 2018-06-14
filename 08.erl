-module(08).
-export([dlugosc/1]).

dlugosc(Lista)->
    dlugosc(Lista,0).
dlugosc([],Wynik)->Wynik;
dlugosc([H|T],N)->
    dlugosc(T,N+1).