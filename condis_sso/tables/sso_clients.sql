create table sso_clients
(
    id                       binary(36) default (uuid())          not null
        primary key,
    client_custom_id         varchar(255)                         not null,
    client_id_issued_at      datetime   default CURRENT_TIMESTAMP not null,
    client_secret            varchar(255)                         not null,
    client_secret_expires_at datetime                             null,
    client_name              varchar(255)                         not null,
    client_settings          int                                  null,
    token_settings           int                                  null,
    constraint client_custom_id
        unique (client_custom_id)
);

