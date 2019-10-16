-module(zadanie_25).
-export([swap/3]).

fold(F,Acc,[H|T])->
    F(H, fold(F, Acc, T));
fold(_, Acc, [])->Acc.

swap(List, OldElem, NewElem)->
    fold(fun(X,Res)->if X==OldElem->[NewElem]++Res; true->[X]++Res end end,[],List).