CREATE TABLE condis_sso.oauth2_registered_client
(
    id                      INT          NOT NULL AUTO_INCREMENT,
    client_id               VARCHAR(255) NOT NULL,
    client_secret           VARCHAR(255) NOT NULL,
    resource_ids            VARCHAR(255) DEFAULT NULL,
    scope                   VARCHAR(255) DEFAULT NULL,
    authorized_grant_types  VARCHAR(255) DEFAULT NULL,
    web_server_redirect_uri VARCHAR(255) DEFAULT NULL,
    authorities             VARCHAR(255) DEFAULT NULL,
    access_token_validity   INT          DEFAULT NULL,
    refresh_token_validity  INT          DEFAULT NULL,
    additional_information  TEXT         DEFAULT NULL,
    PRIMARY KEY (id),
    INDEX                   idx_client_id(client_id),
    INDEX                   idx_resource_ids(resource_ids),
    INDEX                   idx_scope(scope),
    INDEX                   idx_authorized_grant_types(authorized_grant_types)
);
