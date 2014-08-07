-module (console_events).

-behaviour(gen_event).
-export([init/1, handle_event/2, terminate/2, code_change/3, handle_call/2, handle_info/2]).
init(_Args) ->
    {ok, []}.
handle_event(ErrorMsg, State) ->
    io:format("***Info*** ~p~n", [ErrorMsg]),
    {ok, State}.
terminate(_Args, _State) ->
    ok.
handle_call(_Request, State) ->
	  Reply = ok,
	  {ok, Reply, State}.
handle_info(_Info, State) ->
    {ok, State}.
code_change(_OldVsn, State, _Extra) ->
    {ok, State}.
