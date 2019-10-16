-module(zadanie_22).
-export([sum/2]).

iterate(Acc, Condition, Value)->
    C = Condition(Value),
    if C->
        Acc;
        true->iterate(Acc+Value, Condition, Value+1)
    end.

sum(Start, End)->
    iterate(0,fun(X)->if X=<End->false; true->true end end, Start).