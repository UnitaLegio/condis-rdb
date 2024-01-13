create table sso_token_settings
(
    id int auto_increment
        primary key,
    client_id varchar(255) not null references condis_sso.sso_clients(client_custom_id)
);

