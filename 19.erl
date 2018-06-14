-module(19).
-export([usun/1]).

jest([Glowa|Lista],Elem) when Glowa/=Elem ->
    jest(Lista,Elem);
    
jest([Elem|_],Elem)->ok;

jest([],_)->false.

usun([])->[];

usun(Lista)->
    usun(Lista,[]).
usun([],Wynik)->Wynik;
usun([Glowa|Ogon],Wynik)->
    X = jest(Ogon,Glowa),
    case X of
        ok -> usun(Ogon,Wynik);
        false -> usun(Ogon,Wynik++[Glowa])
    end.