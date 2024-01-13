create table sso_client_settings
(
    id               int auto_increment
        primary key,
    client_id varchar(255) null references condis_sso.sso_clients(client_custom_id),
    requires_consent tinyint(1) default 0 not null
);

