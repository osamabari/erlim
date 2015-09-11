## A IM server written in erlang

#### Dependency

* [erlang 17.5](http://www.erlang.org/) +
* [jsx](https://github.com/talentdeficit/jsx) and [jiffy](https://github.com/davisp/jiffy) for json parse
* [etoml](https://github.com/kalta/etoml) for toml parse
* [erlang-uuid-v4](https://github.com/afiskon/erlang-uuid-v4) for token generate
* [emysql](https://github.com/Eonblast/Emysql) for mysql driver

#### Install

```bash
make

# in erl console
application:start(erlim).
```

#### Usage

```erlang
%% 登陆
{S1, T1} = cy:login().
{S2, T2} = ck:login().

%% 发起聊天
cy:sc(S1, T1).
ck:loop_recv(S2).
```

#### Design

* Use toml for config
* Use json for data exchange
* Use http for file upload

#### [API doc](https://github.com/FlowerWrong/erlim/tree/master/api)


#### Features

* single chat: chat must be friends
* group chat: whatsapp-like
* chat history both single chat and group chat

#### Todo

- [x] erlang async receive
- [x] one-to-one chat
- [x] group chat
- [ ] use toml to write config file
- [x] use mnesia for session store
- [x] Toml library of erlang
- [ ] yrl and xrl(语法分析/词法分析) write json parse in erlang(yecc and leex)
- [ ] How to implement pubsub with erlang(gen_event)
