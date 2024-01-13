create table sso_client_scopes
(
    id        int auto_increment
        primary key,
    client_id varchar(255) null references condis_sso.sso_clients(client_custom_id),
    scope     varchar(255) not null,
    constraint i_client_scopes
        unique (client_id, scope)
);

