create table student
(
    name       varchar(255) null,
    email      varchar(255) null,
    country    varchar(255) null,
    student_id varchar(255) not null
        primary key,
    img_src    varchar(255) null,
    password   varchar(255) null
)
    collate = utf8mb4_general_ci;

create index student_id
    on student (student_id);

INSERT INTO A1.student (name, email, country, student_id, img_src, password) VALUES ('asd', 'jiahao.lu@uqconnect.edu.au', '12', '12', null, '12');
INSERT INTO A1.student (name, email, country, student_id, img_src, password) VALUES ('Jiahao Lu', 'chrissnkrs@outlook.com', 'China', '46725806', null, null);
INSERT INTO A1.student (name, email, country, student_id, img_src, password) VALUES ('Chris', '123@outlook.com', 'China', '46725807', null, null);
INSERT INTO A1.student (name, email, country, student_id, img_src, password) VALUES ('Ben', '1234@outlook.com', 'USA', '46725808', null, null);
