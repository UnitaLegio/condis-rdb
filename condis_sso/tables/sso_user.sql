-- auto-generated definition
create table condis_sso.sso_user
(
    id          int auto_increment
        primary key,
    username    varchar(255)                         not null comment 'Login',
    credentials varchar(1000)                        not null comment 'Hashed credentials',
    email       varchar(255)                         not null comment 'User''s email',
    enabled     tinyint(1) default 1                 null comment 'Whether user is enabled',
    created_at  timestamp  default CURRENT_TIMESTAMP null comment 'When user was created',
    updated_at  timestamp  default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment 'Last time of user''s update',
    constraint email
        unique (email),
    constraint username
        unique (username)
)
    comment 'Condis Users';

create index user_idx_email
    on condis_sso.sso_user (email);

create index user_idx_username
    on condis_sso.sso_user (username);