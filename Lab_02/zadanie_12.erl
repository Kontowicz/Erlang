-module(zadanie_12).
-export([delete/2]).

fold(_, Acc, [])->
    Acc;

fold(F, Acc, [H|T])->
    fold(F, F(Acc, H), T).

delete(List, Elem)->
    fold(fun(Acc, Val)-> if Val == Elem -> Acc; true -> Acc ++ [Val] end end, [], List).