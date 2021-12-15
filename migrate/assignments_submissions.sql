create table lighthouse.assignments
(
    id       serial
        constraint assignments_pk
            primary key,
    name     varchar,
    content  text,
    day      varchar,
    chapter  int,
    duration int
);

create unique index assignments_id_uindex
    on lighthouse.assignments (id);

create table lighthouse.assignment_submission
(
    id              serial
        constraint assignment_submission_pk
            primary key,
    assignment_id   int                                   not null
        constraint assignment_submission_assignments_id_fk
            references lighthouse.assignments,
    student_id      int                                   not null
        constraint assignment_submission_student__fk
            references lighthouse.students (id),
    duration        int,
    submission_date timestamptz default clock_timestamp() not null
);

create unique index assignment_submission_id_uindex
    on lighthouse.assignment_submission (id);

