-module(11).
-export([przesun/1]).

przesun(Lista)->
    przesun(Lista,[]).
    
przesun([0|T],Wynik)->
    przesun(T,[0|Wynik]);
    
przesun([H|T],Wynik) ->
    przesun(T,Wynik ++ [H]);
    
przesun([],Wynik)->Wynik.