create table sso_client_logout_redirect_urls
(
    id        int auto_increment
        primary key,
    client_id varchar(255) not null references condis_sso.sso_clients(client_custom_id),
    url       varchar(255) not null,
    constraint i_client_logout_redirect_urls
        unique (client_id, url)
);

