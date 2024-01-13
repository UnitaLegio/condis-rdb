create table sso_password_recover_codes
(
    user_id    int                                not null
        unique references condis_sso.sso_users,
    code       varchar(255)                       not null,
    created_at datetime default CURRENT_TIMESTAMP not null
);

create index i_pass_recover
    on sso_password_recover_codes (code);

