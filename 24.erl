-module(helloworld).
-export([dziel/1]).

dlug(Lista)-> 
    dlug(Lista, 0).

dlug([], Acc) -> Acc;    
    
dlug([H|T], Acc)->
    dlug(T, Acc+1).

dziel(Lista)->
    X = dlug(Lista),
    X1 = X rem 2,
    case X1 of
    0 -> Lista1 = rev(Lista), {poczatek(Lista, trunc(X/2)),rev(poczatek(Lista1,trunc(X/2)))};
    1 -> Lista1 = rev(Lista), {poczatek(Lista, trunc((X-1)/2)),rev(poczatek(Lista1,trunc(((X-1)/2))))}
    end.

poczatek(Lista, X)->
    poczatek(Lista, X, []).
    
poczatek(_, 0, Acc)-> Acc;

poczatek([H|T], X, Acc)->
    poczatek(T, X-1, Acc++[H]).
    
rev([])->[];
rev([H|T]) ->
    rev(T)++[H].