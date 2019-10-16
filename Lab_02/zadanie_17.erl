-module(zadanie_17).
-export([add/2]).

foreach(F, []) -> [];

foreach(F, [H|T])->
    foreach(F,T) ++ [F(H)].

add(List, Value)->
    foreach(fun(X)->X+Value end, List).
