-module(04).
-export([fib/1]).

fib(0)->0;
fib(1)->1;

fib(N) ->
    fib(N-1)+fib(N-2).

fibI(N)->
    fibI(N,0, 1).
    
fibI(1,_,Acc)->Acc;
    
fibI(N,L, Acc)->
    L1 = Acc,
    Acc1 = Acc+L,
    fibI(N-1, L1, Acc1).