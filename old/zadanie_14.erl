-module(14).
-export([obracanie/1]).

obracanie(Lista)->
    obracanie(Lista,[]).
    
obracanie([],Wynik)->Wynik;

obracanie([H|T],Wynik)->
    obracanie(T,[H|Wynik]).