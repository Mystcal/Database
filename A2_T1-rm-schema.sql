--****PLEASE ENTER YOUR DETAILS BELOW****
--T1-rm-schema.sql

--Student ID: 32637888
--Student Name: LIM YU JIN
--Unit Code: FIT2094
--Applied Class No: 4

/* Comments for your marker:




*/

-- Task 1 Add Create table statements for the Missing TABLES below
-- Ensure all column comments, and constraints (other than FK's)
-- are included. FK constraints are to be added at the end of this script

-- COMPETITOR
CREATE TABLE competitor (
    comp_no     number (5) not null,
    comp_fname     VARCHAR2(30),
    comp_lname VARCHAR2(30),
    comp_gender CHAR(1) NOT NULL,
    comp_dob    date not null,
    comp_email varchar2 (50) not null,
    comp_unistatus  char (1) NOT NULL,
    comp_phone  char (10) not null,
    comp_ec_relationship    char (1) not null,
    ec_phone    char (10) not null
);

COMMENT ON COLUMN competitor.comp_no IS
    'Unique identifier for a competitor';

COMMENT ON COLUMN competitor.comp_fname IS
    'Competitor’s first name';

COMMENT ON COLUMN competitor.comp_lname IS
    'Competitor’s last name';

COMMENT ON COLUMN competitor.comp_gender IS
    'Competitor’s gender (‘M’ for male, ‘F’ for female, or ‘U’ for
‘Undisclosed’)';

COMMENT ON COLUMN competitor.comp_dob IS
    'Competitor’s date of birth';
    
COMMENT ON COLUMN competitor.comp_email IS
    'Competitor’s email';

COMMENT ON COLUMN competitor.comp_unistatus IS
    'Competitor’s university student/staff status ( "Y" for Yes or "N" for No)';

COMMENT ON COLUMN competitor.comp_phone IS
    'Competitor’s phone number';
    
COMMENT ON COLUMN competitor.comp_ec_relationship IS
    'Emergency contact relationship to competitor (‘P’ for
Parent, ‘G’ for Guardian, ‘T’ for Partner, or ‘F’ for Friend)';

ALTER TABLE competitor ADD CONSTRAINT comp_no_pk PRIMARY KEY ( comp_no );

-- EMERCONTACT
CREATE TABLE emercontact (
    ec_phone     char (10) not null,
    ec_fname     VARCHAR2(30),
    ec_lname VARCHAR2(30)
);

COMMENT ON COLUMN emercontact.ec_phone IS
    'Emergency contact’s phone number (unique identifier)';

COMMENT ON COLUMN emercontact.ec_fname IS
    'Emergency contact’s first name';

COMMENT ON COLUMN emercontact.ec_lname IS
    'Emergency contact’s last name';

ALTER TABLE emercontact ADD CONSTRAINT ec_phone_pk PRIMARY KEY ( ec_phone );

--ENTRY
CREATE TABLE entry  (
    event_id    number (6) not null,
    entry_no    number (5) not null,
    entry_starttime date,
    entry_finishtime    date,
    comp_no number (5) not null,
    team_id number(3),
    char_id number (3)
);

COMMENT ON COLUMN entry.entry_no IS
    'Entry number (unique for each event)';

COMMENT ON COLUMN entry.entry_starttime IS
    'The entrant start time';

COMMENT ON COLUMN entry.entry_finishtime IS
    'The entrant finish time';

ALTER TABLE entry ADD CONSTRAINT entries_pk PRIMARY KEY ( entry_no, event_id );

--TEAM
CREATE TABLE team  (
    team_id     number (3) not null,
    team_name     varchar2 (30) not null,
    carn_date date not null,
    team_no_members number (2) not null,
    event_id     number (6) not null,
    entry_no number(5) not null,
    char_id number (3)
);

COMMENT ON COLUMN team.team_id IS
    'Team identifier (unique)';

COMMENT ON COLUMN team.team_name IS
    'Team name';

COMMENT ON COLUMN team.team_no_members IS
    'Number of team members';
    
ALTER TABLE team ADD CONSTRAINT team_id_pk PRIMARY KEY ( team_id );
ALTER TABLE team ADD CONSTRAINT team_nk UNIQUE ( team_name, carn_date );

-- Add all missing FK Constraints below here
--foreign key for competitor
ALTER TABLE competitor
    ADD CONSTRAINT ec_phone_fk FOREIGN KEY ( ec_phone )
        REFERENCES emercontact ( ec_phone );

--foreign key for entry
ALTER TABLE entry
    ADD CONSTRAINT event_id_fk FOREIGN KEY ( event_id )
        REFERENCES event ( event_id );
        
ALTER TABLE entry
    ADD CONSTRAINT comp_no_fk FOREIGN KEY ( comp_no )
        REFERENCES competitor ( comp_no );

ALTER TABLE entry
    ADD CONSTRAINT team_id_fk FOREIGN KEY ( team_id )
        REFERENCES team ( team_id );

ALTER TABLE entry
    ADD CONSTRAINT char_id_fk FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );
        
--foreign key for team
ALTER TABLE team
    ADD CONSTRAINT carn_date_fk FOREIGN KEY ( carn_date )
        REFERENCES carnival ( carn_date );
        
ALTER TABLE team
    ADD CONSTRAINT entry_no_fk FOREIGN KEY ( entry_no, event_id )
        REFERENCES entry( entry_no, event_id );
        
ALTER TABLE team
    ADD CONSTRAINT charid_fk FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );
        
commit;