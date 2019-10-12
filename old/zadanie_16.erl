-module(16).
-export([polacz/2]).


polacz(Lista,Lista1)->
    polacz(Lista,Lista1,[]).

polacz([],X,Wynik)->Wynik++X;
polacz(X,[],Wynik)->Wynik++X;
    
polacz([H|T],[H1|T1],Wynik)
    when H=<H1 ->
    polacz(T,[H1|T1],Wynik++[H]);    

polacz([H|T],[H1|T1],Wynik)
    when H>H1 ->
    polacz([H|T],T1,Wynik++[H1]).