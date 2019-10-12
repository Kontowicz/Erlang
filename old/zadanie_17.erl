-module(17).
-export([usun/2]).

usun([Glowa|Ogon],Elem) when Glowa/=Elem ->
    [Glowa|usun(Ogon,Elem)];
    
usun([Elem|Ogon], Elem) ->
    usun(Ogon,Elem);

usun([],Elem)->[].