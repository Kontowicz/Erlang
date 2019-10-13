-module(zadanie_9).
-export([add/1]).

foldrC(F, Accu, [Hd|Tail]) ->
    F(Hd, foldrC(F, Accu, Tail));
foldrC(F, Accu, []) when is_function(F, 2) -> Accu.

add(List)->
    foldrC(fun(X,Y)->X+Y end, 0, List).