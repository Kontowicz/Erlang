-module(12).
-export([przesun/1]).

przesun([]) -> [];

przesun([0|Ogon])->
    [0|przesun(Ogon)];

    
przesun([Glowa|Ogon])->
    przesun(Ogon)++[Glowa].