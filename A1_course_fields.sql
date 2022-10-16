create table course_fields
(
    field_name  varchar(200) not null,
    course_name varchar(200) null,
    course_id   varchar(200) not null
        primary key
);

INSERT INTO A1.course_fields (field_name, course_name, course_id) VALUES ('BEL', 'xxxx', 'BUSS12223');
INSERT INTO A1.course_fields (field_name, course_name, course_id) VALUES ('BEL', 'xx', 'BUSS12345');
INSERT INTO A1.course_fields (field_name, course_name, course_id) VALUES ('EAIT', 'sss', 'DECO7355');
INSERT INTO A1.course_fields (field_name, course_name, course_id) VALUES ('Health & Behavioural Sciences', 'bb', 'HBSS7889');
INSERT INTO A1.course_fields (field_name, course_name, course_id) VALUES ('Humanities & Social Sciences', 'aa', 'HSHS6677');
INSERT INTO A1.course_fields (field_name, course_name, course_id) VALUES ('Medicine', 'ww', 'MEDI7788');
INSERT INTO A1.course_fields (field_name, course_name, course_id) VALUES ('Science', 'gg', 'SCIE8897');
