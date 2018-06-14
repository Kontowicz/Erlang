-module(18).
-export([usun/1]).

jest([Glowa|Lista],Elem) when Glowa/=Elem ->
    jest(Lista,Elem);
    
jest([Elem|_],Elem)->ok;

jest([],_)->false.

usun([])->[];

usun([Glowa|Ogon])->
    X=jest(Ogon,Glowa),
    case X of
        ok -> usun(Ogon);
        false -> [Glowa|usun(Ogon)]
    end.