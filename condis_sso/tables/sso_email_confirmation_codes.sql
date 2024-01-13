create table sso_email_confirmation_codes
(
    user_id    int                                not null
        unique references condis_sso.sso_users,
    code       varchar(255)                       not null,
    created_at datetime default CURRENT_TIMESTAMP not null
);

create index i_confirmation_code
    on sso_email_confirmation_codes (code);

