-module(03).
-export([nalezy/2]).

nalezy([Elem|_],Elem)->nalezy;

nalezy([H|T],Elem)->
    nalezy(T,Elem);
    
nalezy([],_)->nienalezy.