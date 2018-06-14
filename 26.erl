-module(26).
-export([zlicz/1]).

zlicz(Lista)->
    zlicz(Lista, #{}).
zlicz([], Acc)->Acc;
zlicz([H|T], Acc)->
    X = ile(T, H)+1,
    T1 = usun(T,H),
    zlicz(T1,Acc,#{H=>X}).

usun(Lista, A)->
    usun(Lista, A, []).
usun([], _, Acc)->Acc;
usun([A|T], A, Acc)->
    usun(T, A, Acc);
usun([H|T], A, Acc)->
    usun(T, A, Acc++[H]).

ile(Lista, X)->
    ile(Lista,X, 0).
ile([], _,Acc)-> Acc;

ile([X|T],X, Acc)->
    ile(T,X,Acc+1);

ile([H|T],X, Acc)->
    ile(T,X,Acc ).