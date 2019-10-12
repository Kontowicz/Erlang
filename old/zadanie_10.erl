-module(09).
-export([suma/1]).

suma(Lista)->
    suma(Lista,0).
    
suma([H|T],Wynik)->
    suma(T,Wynik+H);
    
suma([],Wynik)->Wynik.