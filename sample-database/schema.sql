
-- Sample database of courses at a hypothetical university 

create table departments (
    department_id text primary key,
    department_name text not null
);

create table professors (
    professor_id int primary key,
    first_name text not null,
    middle_name text,
    last_name text not null,
    department_id text not null references departments(department_id)
);

create table classrooms (
    classroom_id int primary key,
    building_name text not null,
    room_number int not null
);

create table courses (
    course_id text primary key,
    course_name text not null,
    professor_id int not null references professors(professor_id),
    department_id text not null references departments(department_id),
    classroom_id int not null references classrooms(classroom_id),
    start_date date,
    end_date date,
    finals_time timestamptz
);

