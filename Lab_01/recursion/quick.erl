-module( quick ).
 
-export( [qsort/1] ).

small_then([], _) -> [];

small_then([H|T], X) -> 
    if H < X -> 
        [H] ++ small_then(T, X);
    true -> 
        small_then(T, X)
    end.
 
bigger_than([], _) -> [];

bigger_than([H|T], X) ->
    if H >= X ->
        [H] ++ bigger_than(T, X);
    true ->
        bigger_than(T, X)
    end.


qsort([]) -> [];
qsort([X|Xs]) ->
   qsort(qsort(small_then(Xs, X))) ++ [X] ++ qsort(bigger_than(Xs, X)).