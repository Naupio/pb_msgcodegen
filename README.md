pb_msgcodegen
-----
Just plugins of protobuf meesage id  to erlang code generator.

A rebar3 plugin which fork on [riak_pb_msgcodegen](https://github.com/tsloughter/riak_pb_msgcodegen).

LICENSE
-----

- The [MIT License](./LICENSE)  
- Copyright (c) 2018 [Naupio Z.Y Huang](https://github.com/Naupio) 

Build
-----

    $ rebar3 compile

Use
---

Add the plugin to your rebar config:

    {plugins, [
        { pb_msgcodegen, {git, "git@github.com:Naupio/pb_msgcodegen.git", {branch, "master"}}}
    ]}.

Then just call your plugin directly in an existing application:


    $ rebar3 pb_msgcodegen
    ===> Fetching pb_msgcodegen
    ===> Compiling pb_msgcodegen
    <Plugin Output>


Use provider hooks before compile.  
Add the provider_hooks to your rebar config:

    {provider_hooks,
    [{pre, [
        {compile, pb_msgcodegen}
        ]}
    ]}.

Then just compile your application by use `rebar3 compile`
