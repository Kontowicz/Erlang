-module(zadanie_26).
-export([deletel/2, deleter/2]).

deletel(List, Elem)->
    lists:foldl(fun(X,Acc)->if X==Elem->Acc; true->Acc++[X] end end,[],List).

deleter(List, Elem)->
        lists:foldr(fun(X,Acc)->if X==Elem->Acc; true->Acc++[X] end end,[],List).