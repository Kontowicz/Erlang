-module(replace).
-export([replace/3]).

replace(L, X, Y)->
    replace(L, X, Y, []).

replace([], _, _, Acc)-> Acc;

replace([H|T], H, Y, Acc)->
    replace(T, H, Y, Acc++[Y]);

replace([H|T], X, Y, Acc)->
    replace(T, X, Y, Acc ++ [H]).