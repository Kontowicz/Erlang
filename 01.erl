-module(01).
-export([silnia/1]).

silnia(0)->1;

silnia(N) when N>0 ->
    N*silnia(N-1).