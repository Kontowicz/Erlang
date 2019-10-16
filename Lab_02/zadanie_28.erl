-module(zadanie_28).
-export([swapi/3, swapr/3]).

swapi(List, Old, New)->
    lists:foldl(fun(H,Acc)->if H==Old->Acc++[New];true->Acc++[H] end end,[], List).

swapr(List, Old, New)->
    lists:foldr(fun(X,Acc)-> if X==Old->[New]++Acc; true->[X]++Acc end end ,[], List).