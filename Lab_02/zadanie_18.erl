-module(zadanie_18).
-export([all/2]).

fold(_,false,_)->false;
fold(_,true,[])->true;
fold(F,Acc,[H|T])->
    fold(F,F(H),T).

all(Predicate, [H|T])->
    fold(Predicate, Predicate(H),T).