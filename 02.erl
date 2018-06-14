-module(02).
-export([parzysta/1]).

parzysta(0)->true;
parzysta(1)->false;
parzysta(N) when N>0 ->
    parzysta(N-2).
    
parzystaSwitch(N)->
    case N rem 2 of
    0 -> parzysta;
    1 -> nieparzysta
    end.
    
parzystaIf(N)->
    if 
        N rem 2 == 0 -> patrzysta;
        N rem 2 == 1  -> nieparzysta
    end.