-module(25).
-import(lists,[member/2]). 
-export([usun/1]).

usun(Lista)->
    usun(Lista, []).
    
usun([], Acc)-> Acc;
    
usun([H|T], Acc)->
    case member(H,T) of
    true-> usun(T,Acc);
    false-> usun(T,Acc++[H])
    end.