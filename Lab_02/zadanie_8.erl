-module(zadanie_8).
-export([add/1]).

foldlC(F, Accu, [Hd|Tail]) ->			% (C )
    io:format("Element: ~p~n",[Hd]),
    foldlC(F, F(Hd, Accu), Tail);

foldlC(F, Accu, []) when is_function(F, 2) -> Accu.

add(List)->
    foldlC(fun(X,Y)->X+Y end, 0, List).