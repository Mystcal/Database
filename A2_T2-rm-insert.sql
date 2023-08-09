--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID: 32637888
--Student Name: LIM YU JIN
--Unit Code: FIT2094
--Applied Class No: 4

/* Comments for your marker:




*/

-- Task 2 Load the EMERCONTACT, COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- EMERCONTACT
-- =======================================
INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0121234123',
    'Max',
    'Leong'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0161234321',
    'Danielle',
    'Lee'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0174321123',
    'Ecallaw',
    'Tan'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0184321321',
    'Chuanny',
    'Tan'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0194123132',
    'Justin',
    'Tan'
);

-- =======================================
-- COMPETITOR
-- =======================================
INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '1',
    'Chernyi',
    'Lim',
    'M',
    TO_DATE('13/Jan/2002', 'DD/MON/YYYY'),
    'chernyilim@student.monash.edu',
    'Y',
    '0126789123',
    'P',
    '0121234123'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '2',
    'John',
    'Teoh',
    'M',
    TO_DATE('26/Jan/2002', 'DD/MON/YYYY'),
    'johnteoh@student.monash.edu',
    'Y',
    '0166789321',
    'P',
    '0121234123'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '3',
    'Alvin',
    'Soo',
    'M',
    TO_DATE('17/Feb/2002', 'DD/MON/YYYY'),
    'alvinsoo@student.monash.edu',
    'Y',
    '0175678123',
    'P',
    '0121234123'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '4',
    'Elisha',
    'Ng',
    'F',
    TO_DATE('19/Feb/2002', 'DD/MON/YYYY'),
    'elishang@student.monash.edu',
    'Y',
    '0185678321',
    'P',
    '0161234321'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '5',
    'Jon',
    'Ha',
    'M',
    TO_DATE('7/Mar/2002', 'DD/MON/YYYY'),
    'jonha@student.monash.edu',
    'Y',
    '0194567123',
    'G',
    '0161234321'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '6',
    'Joey',
    'Lim',
    'F',
    TO_DATE('11/Mar/2002', 'DD/MON/YYYY'),
    'joeylim@student.monash.edu',
    'Y',
    '0124567321',
    'G',
    '0161234321'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '7',
    'Fluoryynx',
    'Lim',
    'F',
    TO_DATE('17/Apr/2002', 'DD/MON/YYYY'),
    'fluorrynxlim@student.monash.edu',
    'Y',
    '0163456123',
    'G',
    '0174321123'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '8',
    'Serene',
    'Yee',
    'F',
    TO_DATE('23/Apr/2002', 'DD/MON/YYYY'),
    'sereneyee@student.monash.edu',
    'Y',
    '0173456321',
    'G',
    '0174321123'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '9',
    'Kailin',
    'Lim',
    'F',
    TO_DATE('29/May/2002', 'DD/MON/YYYY'),
    'kailinlim@student.monash.edu',
    'Y',
    '0182345123',
    'T',
    '0174321123'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '10',
    'Eric',
    'Chew',
    'M',
    TO_DATE('2/May/2001', 'DD/MON/YYYY'),
    'ericchew@student.monash.edu',
    'Y',
    '0192345321',
    'T',
    '0184321321'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '11',
    'Junjie',
    'Chua',
    'M',
    TO_DATE('3/Jun/2000', 'DD/MON/YYYY'),
    'junjiechua@student.monash.edu',
    'Y',
    '0129876123',
    'T',
    '0184321321'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '12',
    'Seng',
    'Tan',
    'M',
    TO_DATE('5/Jun/2001', 'DD/MON/YYYY'),
    'sengtan@student.monash.edu',
    'N',
    '0169876321',
    'T',
    '0184321321'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '13',
    'Carmen',
    'Choo',
    'F',
    TO_DATE('7/Jul/2002', 'DD/MON/YYYY'),
    'carmenchoo@student.monash.edu',
    'N',
    '0178765123',
    'F',
    '0194123132'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '14',
    'Kexuan',
    'Chang',
    'F',
    TO_DATE('9/Jul/2002', 'DD/MON/YYYY'),
    'kexuanchang@student.monash.edu',
    'N',
    '0188765321',
    'F',
    '0194123132'
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    '15',
    'Xinchuen',
    'Kew',
    'M',
    TO_DATE('13/Nov/2002', 'DD/MON/YYYY'),
    'xinchuenkew@student.monash.edu',
    'N',
    '0197654123',
    'F',
    '0194123132'
);

-- =======================================
-- ENTRY
-- =======================================
INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '1',
    '1',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:10','HH:MI'),
    '1',
    '1'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '3',
    '1',
    TO_DATE('09:00','HH:MI'),
    TO_DATE('09:30','HH:MI'),
    '1',
    '1'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '2',
    '2',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:30','HH:MI'),
    '2',
    '1'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '6',
    '2',
    TO_DATE('08:35','HH:MI'),
    TO_DATE('08:50','HH:MI'),
    '2',
    '1'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '9',
    '3',
    TO_DATE('08:05','HH:MI'),
    TO_DATE('10:05','HH:MI'),
    '3',
    '2'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '10',
    '3',
    TO_DATE('08:00','HH:MI'),
    TO_DATE('08:15','HH:MI'),
    '3',
    '2'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '8',
    '4',
    TO_DATE('08:05','HH:MI'),
    TO_DATE('09:00','HH:MI'),
    '4',
    '2'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '6',
    '4',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('08:40','HH:MI'),
    '4',
    '2'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '7',
    '5',
    TO_DATE('08:35','HH:MI'),
    TO_DATE('09:00','HH:MI'),
    '5',
    '3'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '12',
    '5',
    TO_DATE('08:45','HH:MI'),
    TO_DATE('09:15','HH:MI'),
    '5',
    '3'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '1',
    '6',
    TO_DATE('08:35','HH:MI'),
    TO_DATE('09:10','HH:MI'),
    '6',
    '3'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '3',
    '6',
    TO_DATE('09:00','HH:MI'),
    TO_DATE('09:35','HH:MI'),
    '6',
    '3'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '2',
    '7',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:35','HH:MI'),
    '7',
    '4'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '6',
    '7',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('08:55','HH:MI'),
    '7',
    '4'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '9',
    '8',
    TO_DATE('08:00','HH:MI'),
    TO_DATE('10:05','HH:MI'),
    '8',
    '4'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id
) VALUES (
    '10',
    '8',
    TO_DATE('08:05','HH:MI'),
    TO_DATE('08:20','HH:MI'),
    '8',
    '4'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '8',
    '9',
    TO_DATE('08:00','HH:MI'),
    TO_DATE('08:50','HH:MI'),
    '9'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '6',
    '9',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('08:45','HH:MI'),
    '9'
);
INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '1',
    '10',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:00','HH:MI'),
    '10'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '7',
    '10',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:00','HH:MI'),
    '10'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '2',
    '11',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:30','HH:MI'),
    '11'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '4',
    '11',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:25','HH:MI'),
    '11'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '9',
    '12',
    TO_DATE('08:00','HH:MI'),
    TO_DATE('09:55','HH:MI'),
    '12'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '10',
    '12',
    TO_DATE('08:05','HH:MI'),
    TO_DATE('08:20','HH:MI'),
    '12'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '5',
    '13',
    TO_DATE('08:00','HH:MI'),
    TO_DATE('10:10','HH:MI'),
    '13'
);

INSERT INTO entry (
    event_id,
    entry_no,
    comp_no
) VALUES (
    '13',
    '13',
    '13'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '1',
    '14',
    TO_DATE('08:30','HH:MI'),
    TO_DATE('09:15','HH:MI'),
    '14'
);

INSERT INTO entry (
    event_id,
    entry_no,
    comp_no
) VALUES (
    '12',
    '14',
    '14'
);

INSERT INTO entry (
    event_id,
    entry_no,
    comp_no
) VALUES (
    '14',
    '15',
    '15'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no
) VALUES (
    '10',
    '15',
    TO_DATE('08:00','HH:MI'),
    TO_DATE('08:15','HH:MI'),
    '15'
);
-- =======================================
-- TEAM
-- =======================================
INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    '1',
    'Drago',
    TO_DATE('24/Sep/2021', 'DD/MON/YYYY'),
    '2',
    '1',
    '1',
    '1'
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    '2',
    'Pheonix',
    TO_DATE('5/Feb/2022', 'DD/MON/YYYY'),
    '4',
    '6',
    '7',
    '2'
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    '3',
    'Opernicus',
    TO_DATE('24/Sep/2021', 'DD/MON/YYYY'),
    '2',
    '1',
    '10',
    '3'
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    '4',
    'Surrogate',
    TO_DATE('29/May/2022', 'DD/MON/YYYY'),
    '3',
    '13',
    '13',
    '4'
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no
) VALUES (
    '8',
    'Pheonix',
    TO_DATE('24/Sep/2021', 'DD/MON/YYYY'),
    '2',
    '1',
    '6'
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no
) VALUES (
    '7',
    'Drago',
    TO_DATE('5/Feb/2022', 'DD/MON/YYYY'),
    '4',
    '6',
    '2'
);

--ENTER THE team_id INTO ENTRY TABLE
UPDATE entry
SET    team_id = 1
WHERE  event_id = 1 and entry_no = 1 ;

UPDATE entry
SET    team_id = 1
WHERE  event_id = 2 and entry_no = 2 ;

UPDATE entry
SET    team_id = 7
WHERE  event_id = 6 and entry_no = 2 ;

UPDATE entry
SET    team_id = 7
WHERE  event_id = 9 and entry_no = 3 ;

UPDATE entry
SET    team_id = 7
WHERE  event_id = 8 and entry_no = 4 ;

UPDATE entry
SET    team_id = 7
WHERE  event_id = 7 and entry_no = 5 ;

UPDATE entry
SET    team_id = 8
WHERE  event_id = 1 and entry_no = 6 ;

UPDATE entry
SET    team_id = 8
WHERE  event_id = 2 and entry_no = 7 ;

UPDATE entry
SET    team_id = 2
WHERE  event_id = 6 and entry_no = 7 ;

UPDATE entry
SET    team_id = 2
WHERE  event_id = 9 and entry_no = 8 ;

UPDATE entry
SET    team_id = 2
WHERE  event_id = 8 and entry_no = 9 ;

UPDATE entry
SET    team_id = 3
WHERE  event_id = 1 and entry_no = 10 ;

UPDATE entry
SET    team_id = 2
WHERE  event_id = 7 and entry_no = 10 ;

UPDATE entry
SET    team_id = 3
WHERE  event_id = 2 and entry_no = 11 ;

UPDATE entry
SET    team_id = 4
WHERE  event_id = 13 and entry_no = 13 ;

UPDATE entry
SET    team_id = 4
WHERE  event_id = 12 and entry_no = 14 ;

UPDATE entry
SET    team_id = 4
WHERE  event_id = 14 and entry_no = 15 ;

commit;