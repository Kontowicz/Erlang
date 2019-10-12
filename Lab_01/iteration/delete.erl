-module(delete).
-export([delete/2]).

delete(L, X)->
    delete(L, X, []).

delete([H|T], H, Acc)->
    delete(T, H, Acc);

delete([H|T], X, Acc)->
        delete(T, X, Acc ++ [H]);

delete([], _, Acc) -> Acc.