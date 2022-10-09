create table student_course
(
    id           bigint auto_increment
        primary key,
    student_id   varchar(255) null,
    course_id    varchar(255) null,
    student_name varchar(200) not null
)
    collate = utf8mb4_general_ci;

INSERT INTO A1.student_course (id, student_id, course_id, student_name) VALUES (1560575423013560322, '46725806', 'DECO1234', 'Jiahao Lu');
INSERT INTO A1.student_course (id, student_id, course_id, student_name) VALUES (1560579274940686337, '46725806', 'DECO7180', 'Jiahao Lu');
INSERT INTO A1.student_course (id, student_id, course_id, student_name) VALUES (1563098970860670978, '46725806', 'COMP7505', 'Jiahao Lu');
INSERT INTO A1.student_course (id, student_id, course_id, student_name) VALUES (1563098970860670979, '46725807', 'DECO7381', 'Chris');
INSERT INTO A1.student_course (id, student_id, course_id, student_name) VALUES (1563098970860670980, '46725808', 'DECO7180', 'Ben');
INSERT INTO A1.student_course (id, student_id, course_id, student_name) VALUES (1573917306887237634, '46725806', 'DECO7381', 'Jiahao Lu');
