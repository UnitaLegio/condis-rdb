set search_path to public, condis_sso;
create table sso_users
(
    id          int generated always as identity primary key,
    username    varchar(255) unique                   not null,
    credentials varchar(255)                          not null,
    email       varchar(100) unique                   not null,
    created_at  timestamptz default CURRENT_TIMESTAMP not null,
    updated_at  timestamptz                           null,
    confirmed   boolean     default false             not null,
    enabled     boolean     default true              not null
);

-- Refresh update time;
create or replace function condis_sso.trigger_refresh_update_at()
    returns trigger as
$$
declare
begin
    new.updated_at = now();
    return NEW;
end;
$$ language 'plpgsql';

create or replace trigger ON_UPDATE_DATE
    before update or insert
    on condis_sso.sso_users
    for each row
execute function condis_sso.trigger_refresh_update_at();