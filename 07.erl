-module(07).
-export([silnia/1]).

silnia(N)->
    silnia(N,1).
    
silnia(N,Wynik) 
    when N>0 ->
    silnia(N-1,Wynik*N);
    
silnia(0,Wynik)->Wynik.