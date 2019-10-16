-module(zadanie_16).
-export([merge/2]).

fold(_,Acc,[])->Acc;
fold(F,Acc, [H|T])->
    fold(F,F(Acc,H), T).

merge(First, Second)->
    fold(fun(Acc, H)->Acc++[H] end, First, Second).