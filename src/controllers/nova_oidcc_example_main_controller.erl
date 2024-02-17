-module(nova_oidcc_example_main_controller).
-export([
    index/1
]).

index(_Req) ->
    {status, 200, #{}, <<"Hello world!">>}.
