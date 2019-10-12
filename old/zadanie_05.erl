-module(05).
-export([polacz/2]).

polacz(L,[]) -> L;

polacz(L,[H|T]) ->
   polacz(L ++ [H],T).