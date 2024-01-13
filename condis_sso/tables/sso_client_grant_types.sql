create table sso_client_grant_types
(
    id        int auto_increment
        primary key,
    client_id varchar(255) not null references condis_sso.sso_clients(client_custom_id),
    type      varchar(255) not null references condis_sso.sso_ref_auth_grant_types,
    constraint i_client_grant_type
        unique (client_id, type)
);

