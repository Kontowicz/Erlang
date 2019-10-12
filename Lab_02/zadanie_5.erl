-module(zadanie_5).
-export([add_till/1]).

iterate(X, IsDone, Add)->
    C = IsDone(X),
    if C->
        X;
        true-> X1 = Add(X), iterate(X1, IsDone, Add)
    end.

add_till(N)->
    iterate(1,(fun(X)->if X==N -> true; true->false end end), (fun(X)->X+1 end)).