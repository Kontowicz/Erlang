-module(insert).
-export([insert/2]).

insert(L, X)->
    insert(L, X, []).

insert([], _, Acc) -> Acc;

insert([H|T], X, Acc) -> 
    if H >= X ->
        insert(T, X, Acc ++ [X, H]);
    true -> 
        insert(T, X, Acc ++ [H])
    end.    