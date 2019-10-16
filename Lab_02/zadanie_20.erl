-module(zadanie_20).
-export([dropwhile/2]).

drop(_,[])->[];
drop(Predicate, [H|T])->
    C = Predicate(H),
    if C->
        drop(Predicate, T);
        true-> T
    end.

dropwhile(Predicate, List)->
    drop(Predicate, List).