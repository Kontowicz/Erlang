-module(06).
-export([dlugosc/1]).

dlugosc([])->0;
dlugosc([H|T])->
    1+dlugosc(T).