-module(zadanie_19).
-export([any/2]).

fold(_,true,_)->true;
fold(_,Acc,[])->Acc;
fold(F, Acc, [H|T])->
    fold(F, F(H), T).

any(Predicate, [H|T])->
    fold(Predicate, Predicate(H), T).