-module(zadanie_4).
-export([sqrt/1]).

iterate(S, IsDone, Transform) ->		%IsDone i Transform są jednoargumentowe
	C = IsDone(S),    
	if C -> S;
       	   true -> S1 = Transform(S), iterate(S1, IsDone, Transform)
  	end. 

sqrt(X) -> 
    iterate(1.0, fun(G) -> abs(X-G*G)/X < 0.00001 end, 
        fun(G) -> (G+X/G)/2.0 end). 
    