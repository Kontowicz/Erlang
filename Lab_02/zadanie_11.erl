-module(zadanie_11).
-export([test/0]).

test()->
        lists:foldl(fun(A,B) -> A + B end, 0, lists:seq(1,1)).