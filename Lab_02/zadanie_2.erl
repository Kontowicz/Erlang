-module(zadanie_2).
-export([map/2, filter/2]).

map(_, []) -> [];
map(F, [H|T])->[F(H)|map(F,T)].

filter(P,[])->[];
filter(P,[H|T])->
    case P(H) of
        true -> [H|filter(P,T)];
        _ -> filter(P,T)
    end.