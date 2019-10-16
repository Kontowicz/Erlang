-module(zadanie_15).
-export([belog/2]).

fold(_, true, _)-> true;
fold(_,_,[])->false;
fold(F,Acc,[H|T])->
    fold(F,F(H),T).

belog(List, Elem)->
    fold(fun(H)-> if Elem==H -> true; true->false end end, false, List).