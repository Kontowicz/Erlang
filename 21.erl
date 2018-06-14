-module(helloworld).
-export([selection_sort/1]).

min([H|T])->
    min(T,H).
    
min([],Acc)->Acc;
min([H|T],Acc) when H<Acc ->
    min(T,H);
    
min([H|T],Acc) when H>=Acc ->
    min(T,Acc).

selection_sort(Lista)->
    selection_sort(Lista,[]).
    
selection_sort([],Acc)->Acc;
selection_sort(Lista,Acc)->
    X = min(Lista),
    selection_sort(Lista--[X],Acc++[X]).