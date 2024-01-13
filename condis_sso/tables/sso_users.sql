create table sso_users
(
    id          int auto_increment
        primary key,
    username    varchar(255)                         not null,
    credentials varchar(255)                         not null,
    email       varchar(100)                         not null,
    created_at  datetime   default CURRENT_TIMESTAMP not null,
    updated_at  datetime                             null on update CURRENT_TIMESTAMP,
    confirmed   tinyint(1) default 0                 not null,
    enabled     tinyint(1) default 1                 not null,
    constraint email
        unique (email),
    constraint username
        unique (username)
);

