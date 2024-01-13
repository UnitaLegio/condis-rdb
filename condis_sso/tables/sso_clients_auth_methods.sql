create table sso_clients_auth_methods
(
    id        int auto_increment
        primary key,
    client_id varchar(255) not null references condis_sso.sso_clients (client_custom_id),
    method    varchar(255) not null references condis_sso.sso_ref_auth_methods,
    constraint i_client_auth_methods
        unique (client_id, method)
);

