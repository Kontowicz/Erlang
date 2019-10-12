-module(merge).
-export([merge/2,polacz/2]).

merge(X, Y) -> 
    X ++ Y.

polacz(L,[])->L;
polacz([],L)->L;
polacz(L,[H|T])->
    polacz(L++[H],T).