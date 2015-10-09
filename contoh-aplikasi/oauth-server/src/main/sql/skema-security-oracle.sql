drop table if exists s_users;

create table s_users (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY, 
    username VARCHAR2(100) UNIQUE NOT NULL, 
    password VARCHAR2(255) NOT NULL,
    active NUMBER(1)
) ;

insert into s_users (username, password, active)
values ('endy', '123', 1);
insert into s_users (username, password, active)
values ('adi', '123', 1);

create table s_permissions (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY, 
    id_user NUMBER NOT NULL REFERENCES s_users(id),
    user_role VARCHAR2(255) NOT NULL
) ;

insert into s_permissions (id_user, user_role)
values (1, 'ROLE_SUPERVISOR');

insert into s_permissions (id_user, user_role)
values (1, 'ROLE_OPERATOR');

insert into s_permissions (id_user, user_role)
values (2, 'ROLE_OPERATOR');