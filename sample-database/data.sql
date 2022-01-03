
insert into departments(department_id, department_name) 
values ('MATH', 'Mathematics'),
       ('MCB', 'Molecular and Cell Biology'),
       ('PHYS', 'Physics');

insert into professors (professor_id, first_name, middle_name, last_name, department_id)
values
    (1 , 'Melvin'    , null       , 'Calvin'    , 'MCB'),
    (2 , 'Wendell'   , 'Meredith' , 'Stanley'   , 'MCB'),
    (3 , 'Ernest'    , 'Orlando'  , 'Lawrence'  , 'PHYS'),
    (4 , 'Donald'    , 'Arthur'   , 'Glaser'    , 'PHYS'),
    (5 , 'Shoshichi' , null       , 'Kobayashi' , 'MATH'),
    (6 , 'David'     , 'Harold'   , 'Blackwell' , 'MATH'),
    (7 , 'Michel'    , null       , 'Loève'     , 'MATH');

insert into classrooms (classroom_id, building_name, room_number)
values 
    (1  , 'Evans'   , 1)   ,
    (2  , 'Evans'   , 33)  ,
    (3  , 'Evans'   , 16)  ,
    (4  , 'Evans'   , 60)  ,
    (5  , 'VSLB'    , 100) ,
    (6  , 'VSLB'    , 101) ,
    (7  , 'VSLB'    , 102) ,
    (8  , 'VSLB'    , 207) ,
    (9  , 'Leconte' , 7)   ,
    (10 , 'Leconte' , 6)   ,
    (11 , 'Leconte' , 1);
    

insert into courses (department_id, course_id, course_name, professor_id, classroom_id, start_date, end_date, finals_time)
values
    ('MATH' , 'MATH 110'  , 'Linear Algebra'       , 5 , 1, '2021-08-18', '2021-12-09',  '2021-12-13 17:30:00 America/Los_Angeles'),
    ('MATH' , 'MATH 113'  , 'Abstract Algebra'     , 7 , 1, '2021-08-19', '2021-12-10',  '2021-12-15 08:00:00 America/Los_Angeles'),
    ('MATH' , 'MATH 104'  , 'Real Analysis'        , 6 , 2, '2021-08-18', '2021-12-09',  '2021-12-14 15:00:00 America/Los_Angeles'),
    ('MATH' , 'MATH 185'  , 'Complex Analysis'     , 6 , 3, '2021-08-19', '2021-12-10',  '2021-12-17 15:00:00 America/Los_Angeles'),
    ('MCB'  , 'MCB 100'   , 'Biochemistry'         , 1 , 5, '2021-08-18', '2021-12-09',  '2021-12-17 13:30:00 America/Los_Angeles'),
    ('MCB'  , 'MCB 140'   , 'Genetics'             , 1 , 5, '2021-08-19', '2021-12-10',  '2021-12-13 11:00:00 America/Los_Angeles'),
    ('MCB'  , 'MCB 150'   , 'Immunology'           , 2 , 7, '2021-08-20', '2021-12-01',  '2021-12-15 10:00:00 America/Los_Angeles'),
    ('MCB'  , 'MCB 160'   , 'Neurobiology'         , 2 , 9, '2021-08-18', '2021-12-09',  '2021-12-20 20:00:00 America/Los_Angeles'),
    ('PHYS' , 'PHYS 141'  , 'Solid State Physics'  , 3 , 9, '2021-08-20', '2021-12-10',  '2021-12-15 09:30:00 America/Los_Angeles'),
    ('PHYS' , 'PHYS 137A' , 'Quantum Mechanics'    , 3 , 10, '2021-08-18', '2021-12-09', '2021-12-16 14:00:00 America/Los_Angeles'),
    ('PHYS' , 'PHYS 177'  , 'Molecular Biophysics' , 4 , 11, '2021-08-18', '2021-12-09', '2021-12-16 17:00:00 America/Los_Angeles');


