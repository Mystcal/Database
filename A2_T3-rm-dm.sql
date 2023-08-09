--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 32637888
--Student Name: LIM YU JIN
--Unit Code: FIT2094
--Applied Class No: 4

/* Comments for your marker:




*/

--3(a)
DROP SEQUENCE competitorsq;
DROP SEQUENCE teamsq;
CREATE SEQUENCE competitorsq START WITH 100;
CREATE SEQUENCE teamsq START WITH 100;

commit;
--3(b)

insert into emercontact 
values (
    '0476541234',
    'Jack',
    'Kai'
);

insert into competitor 
values(
    COMPETITORSQ.nextval,
    'Daniel',
    'Kai',
    'M',
    TO_DATE('7/Nov/2002', 'DD/MON/YYYY'),
    'danielkai@student.monash.edu',
    'Y',
    '0197654321',
    'P',
    '0476541234'
);

INSERT INTO entry (
    event_id,
    entry_no,
    comp_no,
    char_id
) VALUES (
    '14',
    '101',
    (select comp_no
        from competitor
            where competitor.comp_fname = 'Daniel' and competitor.comp_lname = 'Kai' and competitor.ec_phone = '0476541234'),
    '2'
);

insert into competitor 
values(
    COMPETITORSQ.nextval,
    'Annabelle',
    'Kai',
    'F',
    TO_DATE('13/Oct/2000', 'DD/MON/YYYY'),
    'annabellekai@student.monash.edu',
    'Y',
    '0196543123',
    'P',
    '0476541234'
);

INSERT INTO entry (
    event_id,
    entry_no,
    comp_no,
    char_id
) VALUES (
    '14',
    '102',
    (select comp_no
        from competitor
            where competitor.comp_fname = 'Annabelle' and competitor.comp_lname = 'Kai' and competitor.ec_phone = '0476541234'),
    '4'
);

commit;

--3(c)
INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    TEAMSQ.nextval,
    'Kai Speedstars',
    TO_DATE('29/May/2022', 'DD/MON/YYYY'),
    '1',
    '14',
    '102',
    '2'
);

UPDATE entry
SET    team_id = (select team_id
                    from team
                    where team_name = 'Kai Speedstars' and event_id = '14')
WHERE   entry.comp_no = (select comp_no
                            from competitor
                            where competitor.comp_fname = 'Annabelle' and competitor.comp_lname = 'Kai' and competitor.ec_phone = '0476541234') ;
                            
commit;
                            
--3(d)
update entry
set event_id = 13
where entry.entry_no = 101;

-- update the number of team members
update team
set team.team_no_members = '2'
where team.event_id = 14 and team.team_name = 'Kai Speedstars' and team.carn_date = TO_DATE('29/MAY/2022', 'DD/MON/YYYY');

UPDATE entry
SET    team_id = (select team_id
                    from team
                    where team_name = 'Kai Speedstars' and event_id = '14')
WHERE   entry.comp_no = (select comp_no
                            from competitor
                            where competitor.comp_fname = 'Daniel' and competitor.comp_lname = 'Kai' and competitor.ec_phone = '0476541234') ;
                            
commit;                         

--3(e)
DELETE FROM entry 
WHERE entry_no = 101;

update team
set team.team_no_members = '1'
where team.event_id = 14 and team.team_name = 'Kai Speedstars' and team.carn_date = TO_DATE('29/MAY/2022', 'DD/MON/YYYY');

delete from competitor 
where comp_fname = 'Daniel' and comp_lname = 'Kai' and ec_phone = '0476541234';

UPDATE entry
SET    team_id = Null
WHERE   entry.entry_no = '102' ;

delete from team
where team_name = 'Kai Speedstars' and event_id = '14';

update entry 
set char_id = 2
where entry_no = 102;

commit;