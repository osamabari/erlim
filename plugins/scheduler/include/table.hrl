%%%-------------------------------------------------------------------
%%% @author yy
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. 九月 2015 下午4:11
%%%-------------------------------------------------------------------
-author("yy").

-record(req, {
    ip,  %% ip地址/0.0.0.0
    port,
    number,  %% 已请求数
    connected,  %% 已经连上的
    max  %% 最大连接数
}).
