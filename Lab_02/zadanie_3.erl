-module(zadanie_3).
-export([my_filter/2]).

my_filter(F, List)->
    [F(X) || X<-List ].