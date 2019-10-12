-module(20).
-export([otoczenie/2]).

otoczenie(Lista,Elem)->
    lewo(Lista,Elem)++[Elem]++prawo(Lista,Elem).
    
prawo([Elem,A,B|_],Elem)->
    [A,B];
    
prawo([Elem,A|_],Elem)->
    [A];
    
prawo([],_)->
    [];
    
prawo([Glowa|Ogon],Elem) when Glowa/=Elem ->
    prawo(Ogon,Elem).
    

lewo([A,B,Elem|_],Elem)->
    [A,B];
    
lewo([A,Elem|_],Elem)->
    [A];
    
lewo([],_)->
    [];
    
lewo([Glowa|Ogon],Elem) when Glowa/=Elem ->
    lewo(Ogon,Elem).