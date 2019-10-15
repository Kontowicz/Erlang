-module(zadanie_13).
-export([insert/2]).

last([])->[];
last([H])->H;
last([H|T])->
        last(T).

fold(_, Acc, []) ->
    Acc;
fold(F, Acc, [H|T]) ->
    fold(F, F(Acc, H), T).

insert(List, Elem)->
    fold(fun(Acc, H)-> Last = last(Acc), D = (Last<Elem)and (Elem<H), if D -> Acc++[Elem,H]; true->Acc++[H] end end,[], List).