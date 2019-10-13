-module(zadanie_6).
-export([power/2]).

iterate(Value, IsDone, Multiply, Pow)->
    C = IsDone(Pow),
    Pow1 = Pow - 1,
    if C->
        Value;
        true -> Val = Multiply(Value), iterate(Val, IsDone, Multiply, Pow1)
    end.

power(Base, Pow)->
    iterate(Base,
    (fun(X)->if X==1 -> true; true->false end end), 
    (fun(X)->Base*X end), 
    Pow).
