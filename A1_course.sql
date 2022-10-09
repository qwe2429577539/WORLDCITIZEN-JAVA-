create table course
(
    course_id varchar(255) not null
        primary key,
    name      varchar(255) null
)
    collate = utf8mb4_general_ci;

INSERT INTO A1.course (course_id, name) VALUES ('DECO7381', 'Studio 3 - Build');
