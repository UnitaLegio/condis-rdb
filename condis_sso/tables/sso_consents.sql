create table sso_consents
(
    id       int auto_increment
        primary key,
    user_id  int                                not null references condis_sso.sso_users,
    scope_id int                                not null references condis_sso.sso_client_scopes,
    grant_date  datetime default CURRENT_TIMESTAMP not null
);

