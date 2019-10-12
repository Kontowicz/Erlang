-module(merge).
-export([merge/2]).

merge(L, LL) ->
    merge(L, LL, L).

merge(L, [H|T], Acc) -> 
    merge(L, T, Acc ++ [H]);

merge([], X, Acc) -> Acc;
merge(X, [], Acc) -> Acc.    