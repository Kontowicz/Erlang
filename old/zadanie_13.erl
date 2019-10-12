-module(13).
-export([obracanie/1]).

obracanie([])->[];

obracanie([H|T])->
    obracanie(T)++[H].