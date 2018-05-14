-module(example_msg).

-export([msg_type/1, msg_code/1, decoder_for/1]).

-spec msg_type(non_neg_integer()) -> atom().

msg_type(100) -> helloProto;
msg_type(_) -> undefined.

-spec msg_code(atom()) -> non_neg_integer().

msg_code(helloProto) -> 100.

-spec decoder_for(non_neg_integer()) -> module().


decoder_for(100) -> common_module_pb.