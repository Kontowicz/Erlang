-module(zadanie_21).
-export([partition/2]).

part(_, Acc, Acc1, [])-> {Acc, Acc1};

part(Predicate, Acc, Acc1, [H|T])->
    C = Predicate(H),
    if C->
        part(Predicate, Acc++[H], Acc1, T);
        true-> part(Predicate, Acc, Acc1++[H], T)
    end.

partition(Predicate, List)->
    part(Predicate,[], [], List).
