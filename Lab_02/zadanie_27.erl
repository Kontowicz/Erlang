-module(zadanie_27).
-export([inseri/2,inserr/2,test/2]).

gett([])->
    [];
gett([H|T])->
    H.

inseri(List, Elem)->
    lists:foldl(fun(H,Acc)-> W=gett(Acc), C=(H<Elem) and (H<W), if C->Acc++[H,Elem]; true->Acc++[H] end end,[],List).

inserr(List, Elem)->
    lists:foldr(fun(H,Acc)-> W=gett(Acc), C=(H<Elem) and (H<W), if C->[H,Elem]++Acc; true->[H]++Acc end end,[],List).

test(List, Elem)->
        lists:foldl(fun(H,Acc)-> W=gett(Acc), C=(H<Elem) and (H>W), if C->Acc++[Elem,H]; true->Acc++[H] end end,[],List).