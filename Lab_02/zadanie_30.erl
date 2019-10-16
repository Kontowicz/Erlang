-module(zadanie_30).
-export([getnth/2]).

getnth(List, N)->
    lists:foldl(fun(X,Acc)->if Acc==N->throw(X); true->Acc+1 end end,0,List).