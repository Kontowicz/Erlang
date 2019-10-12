-module(belong).
-export([belong/2]).

belong([H|T],H)->true;

belong([H|T],X)->
    belong(T,X);

belong([],_) -> false.