-module(insert).
-export([insert_in_order/2]).

insert_in_order([], _) -> [];

insert_in_order([H|T], X) ->
    if H > X ->
            [X, H] ++ insert_in_order(T, X);
    true ->
        [H] ++ insert_in_order(T, X)
    end.
