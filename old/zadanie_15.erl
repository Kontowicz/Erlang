-module(15).
-export([polacz/2]).

polacz(X,[])->X;
polacz([],X)->X;

polacz([H|T],[H1|T1])
    when H=<H1 ->
    [H|polacz(T,[H1|T1])];
    
polacz([H|T],[H1|T1])
    when H>H1 ->
    [H1|polacz([H|T],T1)].