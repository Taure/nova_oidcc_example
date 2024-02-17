%%%-------------------------------------------------------------------
%% @doc nova_admin public API
%% @end
%%%-------------------------------------------------------------------

-module(nova_oidcc_example_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    nova_oidcc_example_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
