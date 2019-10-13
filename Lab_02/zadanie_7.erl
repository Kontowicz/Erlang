-module(zadanie_7).
-export([add/1]).

foldlH(_, Start, [ ]) -> Start;

foldlH(F, Start, [H|T]) -> 
    foldlH(F, F(H, Start), T).

add(List)->
    foldlH(fun(X, Y)->X+Y end, 0, List).