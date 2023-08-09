--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-alter.sql

--Student ID: 32637888
--Student Name: LIM YU JIN
--Unit Code: FIT2094
--Applied Class No: 4

/* Comments for your marker:




*/

--4(a)
ALTER TABLE ENTRY
ADD elapsed_time NUMBER(5,2);

UPDATE ENTRY
SET  entry.elapsed_time = (ENTRY_FINISHTIME - ENTRY_STARTTIME)*24 ;

COMMIT;

--4(b)

alter table team
add (m_char VARCHAR2 (8),
    "char_id_1(%)" number (3),
    "char_id_2(%)" number (3),
    "char_id_3(%)" number (3),
    "char_id_4(%)" number (3)
);

update team
set "char_id_1(%)" = 100
where team_id = 1;

update team
set "char_id_2(%)" = 100
where team_id = 2;

update team
set "char_id_3(%)" = 100
where team_id = 3;

update team
set "char_id_4(%)" = 100
where team_id = 4;

COMMIT;

--4(c)
alter table competitor
add (carn_1 number (1) default 4,
    carn_2 number (1) default 4,
    carn_3 number (1) default 4,
    carn_4 number (1) default 4,
    carn_5 number (1) default 4
);

COMMENT ON COLUMN competitor.carn_1 IS
    'Competitor’s officials duty in RM Spring Series Clayton insert number: 1, 2, 3 or 4 (1: time keeper, 2: marshal, 3: starter, 4: first aid)';

COMMENT ON COLUMN competitor.carn_2 IS
    'Competitor’s officials duty in RM Spring Series Caulfield insert number: 1, 2, 3 or 4 (1: time keeper, 2: marshal, 3: starter, 4: first aid)';

COMMENT ON COLUMN competitor.carn_3 IS
    'Competitor’s officials duty in RM Summer Series Caulfield insert number: 1, 2, 3 or 4 (1: time keeper, 2: marshal, 3: starter, 4: first aid)';
    
COMMENT ON COLUMN competitor.carn_4 IS
    'Competitor’s officials duty in RM Autumn Series Clayton insert number: 1, 2, 3 or 4 (1: time keeper, 2: marshal, 3: starter, 4: first aid)';
    
COMMENT ON COLUMN competitor.carn_5 IS
    'Competitor’s officials duty in RM Autumn Series Caulfield insert number: 1, 2, 3 or 4 (1: time keeper, 2: marshal, 3: starter, 4: first aid)';
    
COMMIT;
