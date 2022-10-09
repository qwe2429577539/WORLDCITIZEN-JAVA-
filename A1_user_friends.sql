create table user_friends
(
    id     int          not null,
    user   varchar(255) not null,
    friend varchar(255) not null,
    primary key (id, user, friend)
)
    collate = utf8mb4_general_ci;

INSERT INTO A1.user_friends (id, user, friend) VALUES (46725807, 'Chris', 'Ben');
INSERT INTO A1.user_friends (id, user, friend) VALUES (46725807, 'Chris', 'Tom');
INSERT INTO A1.user_friends (id, user, friend) VALUES (46725807, 'Chris', 'Tommy');
