-module(zadanie_1).
-export([a/0,b/1,base1/0, base2/0]).

a() -> Secret = "pony", fun() -> Secret end.
b(F) -> "a/0's password is "++F().

base1() -> A = 1, (fun() -> A = 2 end)(), A.			
base2() -> A = 1, (fun(A) -> A = 2 end)(2), A.
