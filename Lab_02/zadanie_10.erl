-module(zadanie_10).
-export([add/1]).

foldrH(_, Acc, [])->Acc;

foldrH(F, Acc, [H|T])->
    F(H, foldrH(F, Acc, T)).

add(List)->
    foldrH(fun(X, Y)->X+Y end, 0, List).