-module(09).
-export([pomniejsz/2]).

pomniejsz(Lista,Ile)->
    pomniejsz(Lista,Ile,[]).
    
pomniejsz([H|T], Ile, Wynik)->
    pomniejsz(T,Ile,Wynik++[H-Ile]);
    
pomniejsz([],_,Wynik)->Wynik.