-module(replace).
-export([replace/3]).

replace([H|T], H, X) ->
    [X] ++ replace(T, H, X);

replace([H|T], X, Y) ->
    [H] ++ replace(T, X, Y);

replace([], _, _) -> [].