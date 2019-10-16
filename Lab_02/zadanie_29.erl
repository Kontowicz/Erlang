-module(zadanie_29).
-export([belong/2]).

belong(List, Elem)->
    lists:foldl(fun(X,Acc)-> if Acc==false-> if X==Elem->true; true->false end ;true->Acc end end,false, List).