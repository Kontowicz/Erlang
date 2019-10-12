-module(remove).
-export([delete/2]).

delete([H|T], H) -> 
    delete(T, H);

delete([H|T], X) ->
    [H] ++ delete(T, X);

delete([], _) -> [].