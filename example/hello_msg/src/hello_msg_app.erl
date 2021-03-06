%%%-------------------------------------------------------------------
%% @doc hello_msg public API
%% @end
%%%-------------------------------------------------------------------

-module(hello_msg_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    hello_msg_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
