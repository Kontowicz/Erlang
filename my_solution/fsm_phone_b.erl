-module(fsm_phone_b).
-export([start/0, stop/0]).
-export([incomming/1, other_on_hook/1, make_call/1]).
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
make_call(Num) -> fsm ! {call, Num}, ok.
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
        {call, Num} ->
            call_out(Num);
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
    Start_time=erlang:monotonic_time(second),
    {ok, LogFile} = file:open("data.log", [append]),
    io:format(LogFile,"~s ~B ~s ~B ~n",["Receiving from: ",Num," start time: ",erlang:monotonic_time(second)]),
    receive
        on_hook ->
            io:format(LogFile,"~s ~B ~s ~B ~s ~B ~n",["Receiving from: ",Num," end time: ",erlang:monotonic_time(second), " total time: ",erlang:monotonic_time(second)-Start_time]),
            file:close(LogFile),
            idle();
        {stop, Pid} ->
            Pid ! ok;
        print -> 
            io:format("Current state connected.\n")
    end.

call_out(Num) ->
    io:format("Current state call_out.\n"),
    Start_time=erlang:monotonic_time(second),
    {ok, LogFile} = file:open("data.log", [append]),
    io:format(LogFile,"~s ~B ~s ~B ~n",["Calling to: ",Num," start time: ",erlang:monotonic_time(second)]),
    receive
        on_hook ->
            io:format(LogFile,"~s ~B ~s ~B ~s ~B ~n",["Calling to: ",Num," end time: ",erlang:monotonic_time(second), " total time: ",erlang:monotonic_time(second)-Start_time]),
            file:close(LogFile),
            idle();
        {stop, Pid} ->
            Pid ! ok;
        print -> 
            io:format("Current state call_out.\n")
    end.