-module(nova_oidcc_example_router).
-behaviour(nova_router).

-export([
    routes/1
]).

%% The Environment-variable is defined in your sys.config in {nova, [{environment, Value}]}
routes(_Environment) ->
    [
        #{
            prefix => "",
            security => {nova_oidcc_auth, is_authorized},
            routes => [
                {"/", {nova_oidcc_example_main_controller, index}, #{methods => [get]}},
                {"/assets/[...]", "assets"}
            ]
        }
    ].
