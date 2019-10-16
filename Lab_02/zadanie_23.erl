-module(zadanie_23).
-export([delete/2]).

fold(F, Acc, [H|T])->
    F(H,fold(F,Acc,T));
fold(_,Acc,[])->[].

delete(List, Elem)->
    fold(fun(X, List)->if X==Elem->List; true->[X]++List end end,[],List).