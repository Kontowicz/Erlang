-module(fsm_phone).
-export([start/0, stop/0]).
-export([incomming/1, other_on_hook/1]).
-export([on_hook/0, off_hook/0, init/0, print_state/0]).

start()->
    register(fsm, spawn(?MODULE, init, [])),
    ok.

stop() ->
    io:format("Stop.\n"),
    fsm ! {stop, self()},
    ok.

incomming(Num) -> fsm ! {incomming, Num}, ok.
other_on_hook(Num) -> fsm ! {other_on_hook, Num}, ok.
on_hook() -> fsm ! on_hook, ok.
off_hook() -> fsm ! off_hook, ok.
print_state() -> fsm ! print, ok.

init()->
    idle().

idle()->
    io:format("Idle state.\n"),
    receive
        {incomming, Num} ->
            ringing(Num);
        off_hook ->
            dial();
        {stop, Pid} ->
            Pid ! ok;
        print ->
            io:format("Current state idle.\n")
    end.

dial()->
    io:format("Dial state.\n"),
    receive
        on_hook ->
            idle();
        {stop, Pid} ->
            Pid ! ok;
        print ->
            io:format("Current state dial.\n")
    end.

ringing(Num) ->
    io:format("Ringing state.\n"),
    receive
        {other_on_hook, Num} ->
            idle();
        off_hook ->
            connected(Num);
        {stop, Pid} ->
                Pid ! ok;
        print ->
            io:format("Current state ringing.\n")
    end.

connected(Num)->
    io:format("Connected state.\n"),
    receive
        on_hook ->
            idle();
        {stop, Pid} ->
            Pid ! ok;
        print -> 
            io:format("Current state connected.\n")
    end.