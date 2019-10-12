-module(22).
-export([quick_sort/1]).

minimal(List, Value)->
    minimal(List, Value, []).
    
minimal([H|T],Value,Acc) when H=<Value ->
    minimal(T,Value,[H|Acc]);
    
minimal([H|T],Value,Acc) when H>Value ->
    minimal(T,Value,Acc);

minimal([],_,Acc)->Acc.

maximal(List, Value)->
    maximal(List, Value, []).
    
maximal([H|T],Value,Acc) when H>=Value ->
    maximal(T,Value,[H|Acc]);
    
maximal([H|T],Value,Acc) when H<Value ->
    maximal(T,Value,Acc);

maximal([],_,Acc)->Acc.

quick_sort([])->[];
quick_sort([N])->[N];

quick_sort([H|T])->
    quick_sort(minimal(T,H))++[H|quick_sort(maximal(T,H))].
    