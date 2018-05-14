-module(pb_msgcodegen).

-export([init/1]).

-spec init(rebar_state:t()) -> {ok, rebar_state:t()}.
init(State) ->
    {ok, State1} = pb_msgcodegen_prv:init(State),
    {ok, State1}.
