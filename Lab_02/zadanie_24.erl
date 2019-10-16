-module(zadanie_24).
-export([insert/2]).

fold(F,Acc,[H|T])->
    F(H, fold(F,Acc, T));

fold(_,Acc, [])->Acc.

gett([])->
    [];
gett([H|T])->
    H.

insert(List, Elem)->
    fold(fun(H,Acc)-> [H]++Acc end,[],List).