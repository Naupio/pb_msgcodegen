hello_msg
=====

An OTP application

Edit
-----
Edit rebar.config
```
{erl_opts, [debug_info]}.
{deps, []}.

{plugins, [
    { pb_msgcodegen, {git, "git@github.com:Naupio/pb_msgcodegen.git", {branch, "master"}}}
]}.

{provider_hooks,
    [{pre, [
        {compile, pb_msgcodegen}
        ]}
    ]}.
```

Build
-----

    $ rebar3 compile
