-module(zadanie_14).
-export([swap/3]).

fold(_, Acc, [])-> Acc;
fold(F, Acc, [H|T])->
    fold(F, F(Acc, H), T).

swap(List, Value, NewValue)->
    fold(fun(Acc, X)-> if X==Value -> Acc ++ [NewValue]; true->Acc++[X] end end , [], List).