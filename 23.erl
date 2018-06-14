-module(23).
-export([przenies/2]).

przenies(Lista, X)->
    przenies(Lista,X, []).

przenies([], _, Acc)->Acc;

przenies([X|T],X,Acc)->
    przenies(T,X,[X|Acc]);
    
przenies([H|T],X,Acc)->
    przenies(T,X,Acc++[H]).