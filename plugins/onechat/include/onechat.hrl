%%%-------------------------------------------------------------------
%%% @author yy
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. 九月 2015 下午4:11
%%%-------------------------------------------------------------------
-author("yy").

%% For mysql record
-record(user_record, {
    id,
    mobile,
    password_digest,
    nick_name,
    uid,
    avatar,
    email,
    created_at,
    updated_at
}).

-record(msg_record, {
    id,
    f,
    t,
    msg,
    unread,
    created_at,
    updated_at
}).

-record(roommsg_record, {
    id,
    f,
    t,
    msg,
    created_at,
    updated_at
}).

-record(room_record, {
    id,
    creator,
    name,
    max_member_count,
    invitable,
    password,
    description,
    subject,
    qrcode,
    created_at,
    updated_at
}).

-record(room_users_record, {
    id,
    room_id,
    user_id,
    nick_name,
    none_bother,
    bg,
    created_at,
    updated_at
}).

-record(user_roommsgs_record, {
    id,
    user_id,
    roommsg_id,
    unread,
    created_at,
    updated_at
}).

-record(friendship_record, {
    id,
    user_id,
    friend_id,
    confirmed,
    created_at,
    updated_at
}).

-record(blockship_record, {
    id,
    user_id,
    block_id,
    created_at,
    updated_at
}).