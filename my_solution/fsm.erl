-module(fsm).
-compile(export_all).

start()->
    register(fsm, spawn(?MODULE, init, [])),
    ok.

init()->
    state_1().

push_event_1() -> fsm ! event_1, ok.
push_event_2() -> fsm ! event_2, ok.
push_event_3() -> fsm ! event_3, ok.
push_stop() -> fsm ! {stop, self()}, ok.

state_1()->
    io:format("State 1."),
    receive
        event_1 ->
            state_1();
        event_2 ->
            state_2();
        {stop, Pid} -> 
            io:format("Stop"),
            Pid ! ok
    end.

state_2()->
    io:format("State 2."),
    receive
        event_3 ->
            state_1();
        {stop, Pid} ->
            io:format("Stop"),
            Pid ! ok
    end.