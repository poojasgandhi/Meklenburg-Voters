-- Team members - Pooja Gandhi, Sakshi Sharma, Sankalp Gabbita

-- Creation of new tables and insertion of data into it
-- We have created 23 new tables - one each for past elections from E1 to E20, one for all the district related info, from ward_desc to dist_1_desc, one for pct data and other or data related to race and ethinicty
   
/* -------- district_info -------- */
DROP TABLE IF EXISTS district_info;
CREATE TABLE district_info
	(dist_info_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
     ward_desc VARCHAR(100),
     cong_dist_desc VARCHAR(100),
     super_court_desc VARCHAR(100),
     judic_dist_desc VARCHAR(100),
     nc_senate_desc VARCHAR(100),
     nc_house_desc VARCHAR(100),
     county_commiss_desc VARCHAR(100),
     school_dist_desc VARCHAR(100),
     dist_1_desc VARCHAR(100)
	);
	
INSERT INTO district_info
	(ward_desc, cong_dist_desc, super_court_desc, judic_dist_desc, nc_senate_desc, nc_house_desc, county_commiss_desc, school_dist_desc, dist_1_desc)
SELECT DISTINCT
	ward_desc, cong_dist_desc, super_court_desc, judic_dist_desc, nc_senate_desc, nc_house_desc, county_commiss_desc, school_dist_desc, dist_1_desc
FROM voters;

/* -------- pct_data -------- */
drop table if exists pct_data ;

create table pct_data as
select distinct precinct_desc, party_cd,pct_portion from mck_voters_db.voters ;

alter table pct_data
add column
pct_key int auto_increment primary key;

/* -------- race_data -------- */
drop table if exists race_data;

create table race_data as 
select distinct race_code,ethnic_code,sex_code from mck_voters_db.voters;

select * from race_data;

alter table race_data
add column
race_ethinic_key int auto_increment primary key;
/* ------- Election 1 ------ */

DROP TABLE IF EXISTS election_E1;

CREATE TABLE election_E1
	(
	 election_E1_id INT PRIMARY KEY AUTO_INCREMENT,
     E1 INT,
     E1_Date DATE,
     E1_VotingMethod CHAR(1),
     E1_PartyCd CHAR(3)
     );
     
INSERT INTO election_e1
	(E1, E1_date, E1_VotingMethod, E1_PartyCd)
SELECT DISTINCT
	E1, E1_Date, E1_VotingMethod, E1_PartyCd
FROM voters;

/* ------- Election 2 ------ */

DROP TABLE IF EXISTS election_E2;

CREATE TABLE election_E2
	(
	 election_E2_id INT PRIMARY KEY AUTO_INCREMENT,
     E2 INT,
     E2_Date DATE,
     E2_VotingMethod CHAR(1),
     E2_PartyCd CHAR(3)
     );
     
INSERT INTO election_e2
	(E2, E2_date, E2_VotingMethod, E2_PartyCd)
SELECT DISTINCT
	E2, E2_Date, E2_VotingMethod, E2_PartyCd
FROM voters;

/* ------- Election 3 ------ */
DROP TABLE IF EXISTS election_E3;

CREATE TABLE election_E3
	(
	 election_E3_id INT PRIMARY KEY AUTO_INCREMENT,
     E3 INT,
     E3_Date DATE,
     E3_VotingMethod CHAR(1),
     E3_PartyCd CHAR(3)
     );
     
INSERT INTO election_e3
	(E3, E3_date, E3_VotingMethod, E3_PartyCd)
SELECT DISTINCT
	E3, E3_Date, E3_VotingMethod, E3_PartyCd
FROM voters;

/* ------- Election 4 ------ */
DROP TABLE IF EXISTS election_E4;

CREATE TABLE election_E4
	(
	 election_E4_id INT PRIMARY KEY AUTO_INCREMENT,
     E4 INT,
     E4_Date DATE,
     E4_VotingMethod CHAR(1),
     E4_PartyCd CHAR(3)
     );
     
INSERT INTO election_e4
	(E4, E4_date, E4_VotingMethod, E4_PartyCd)
SELECT DISTINCT
	E4, E4_Date, E4_VotingMethod, E4_PartyCd
FROM voters;

/* ------- Election 5 ------ */
DROP TABLE IF EXISTS election_E5;

CREATE TABLE election_E5
	(
	 election_E5_id INT PRIMARY KEY AUTO_INCREMENT,
     E5 INT,
     E5_Date DATE,
     E5_VotingMethod CHAR(1),
     E5_PartyCd CHAR(3)
     );
     
INSERT INTO election_e5
	(E5, E5_date, E5_VotingMethod, E5_PartyCd)
SELECT DISTINCT
	E5, E5_Date, E5_VotingMethod, E5_PartyCd
FROM voters;

/* ------- Election 6 ------ */
DROP TABLE IF EXISTS election_E6;

CREATE TABLE election_E6
	(
	 election_E6_id INT PRIMARY KEY AUTO_INCREMENT,
     E6 INT,
     E6_Date DATE,
     E6_VotingMethod CHAR(1),
     E6_PartyCd CHAR(3)
     );
     
INSERT INTO election_e6
	(E6, E6_date, E6_VotingMethod, E6_PartyCd)
SELECT DISTINCT
	E6, E6_Date, E6_VotingMethod, E6_PartyCd
FROM voters;

/* ------- Election 6 ------ */
DROP TABLE IF EXISTS election_E7;

CREATE TABLE election_E7
	(
	 election_E7_id INT PRIMARY KEY AUTO_INCREMENT,
     E7 INT,
     E7_Date DATE,
     E7_VotingMethod CHAR(1),
     E7_PartyCd CHAR(3)
     );
     
INSERT INTO election_e7
	(E7, E7_date, E7_VotingMethod, E7_PartyCd)
SELECT DISTINCT
	E7, E7_Date, E7_VotingMethod, E7_PartyCd
FROM voters;

/* ------- Election 8 ------ */
DROP TABLE IF EXISTS election_E8;

CREATE TABLE election_E8
	(
	 election_E8_id INT PRIMARY KEY AUTO_INCREMENT,
     E8 INT,
     E8_Date DATE,
     E8_VotingMethod CHAR(1),
     E8_PartyCd CHAR(3)
     );
     
INSERT INTO election_e8
	(E8, E8_date, E8_VotingMethod, E8_PartyCd)
SELECT DISTINCT
	E8, E8_Date, E8_VotingMethod, E8_PartyCd
FROM voters;

/* ------- Election 9 ------ */
DROP TABLE IF EXISTS election_E9;

CREATE TABLE election_E9
	(
	 election_E9_id INT PRIMARY KEY AUTO_INCREMENT,
     E9 INT,
     E9_Date DATE,
     E9_VotingMethod CHAR(1),
     E9_PartyCd CHAR(3)
     );
     
INSERT INTO election_e9
	(E9, E9_date, E9_VotingMethod, E9_PartyCd)
SELECT DISTINCT
	E9, E9_Date, E9_VotingMethod, E9_PartyCd
FROM voters;

/* ------- Election 10 ------ */
DROP TABLE IF EXISTS election_E10;

CREATE TABLE election_E10
	(
	 election_E10_id INT PRIMARY KEY AUTO_INCREMENT,
     E10 INT,
     E10_Date DATE,
     E10_VotingMethod CHAR(1),
     E10_PartyCd CHAR(3)
     );
     
INSERT INTO election_e10
	(E10, E10_date, E10_VotingMethod, E10_PartyCd)
SELECT DISTINCT
	E10, E10_Date, E10_VotingMethod, E10_PartyCd
FROM voters;


/* ------- Election 11 ------ */
DROP TABLE IF EXISTS election_E11;

CREATE TABLE election_E11
	(
	 election_E11_id INT PRIMARY KEY AUTO_INCREMENT,
     E11 INT,
     E11_Date DATE,
     E11_VotingMethod CHAR(1),
     E11_PartyCd CHAR(3)
     );
     
INSERT INTO election_e11
	(E11, E11_date, E11_VotingMethod, E11_PartyCd)
SELECT DISTINCT
	E11, E11_Date, E11_VotingMethod, E11_PartyCd
FROM voters;


/* ------- Election 12 ------ */
DROP TABLE IF EXISTS election_E12;

CREATE TABLE election_E12
	(
	 election_E12_id INT PRIMARY KEY AUTO_INCREMENT,
     E12 INT,
     E12_Date DATE,
     E12_VotingMethod CHAR(1),
     E12_PartyCd CHAR(3)
     );
     
INSERT INTO election_e12
	(E12, E12_date, E12_VotingMethod, E12_PartyCd)
SELECT DISTINCT
	E12, E12_Date, E12_VotingMethod, E12_PartyCd
FROM voters;

/* ------- Election 13 ------ */
DROP TABLE IF EXISTS election_E13;

CREATE TABLE election_E13
	(
	 election_E13_id INT PRIMARY KEY AUTO_INCREMENT,
     E13 INT,
     E13_Date DATE,
     E13_VotingMethod CHAR(1),
     E13_PartyCd CHAR(3)
     );
     
INSERT INTO election_e13
	(E13, E13_date, E13_VotingMethod, E13_PartyCd)
SELECT DISTINCT
	E13, E13_Date, E13_VotingMethod, E13_PartyCd
FROM voters;

/* ------- Election 14 ------ */
DROP TABLE IF EXISTS election_E14;

CREATE TABLE election_E14
	(
	 election_E14_id INT PRIMARY KEY AUTO_INCREMENT,
     E14 INT,
     E14_Date DATE,
     E14_VotingMethod CHAR(1),
     E14_PartyCd CHAR(3)
     );
     
INSERT INTO election_e14
	(E14, E14_date, E14_VotingMethod, E14_PartyCd)
SELECT DISTINCT
	E14, E14_Date, E14_VotingMethod, E14_PartyCd
FROM voters;

/* ------- Election 15 ------ */
DROP TABLE IF EXISTS election_E15;

CREATE TABLE election_E15
	(
	 election_E15_id INT PRIMARY KEY AUTO_INCREMENT,
     E15 INT,
     E15_Date DATE,
     E15_VotingMethod CHAR(1),
     E15_PartyCd CHAR(3)
     );
     
INSERT INTO election_e15
	(E15, E15_date, E15_VotingMethod, E15_PartyCd)
SELECT DISTINCT
	E15, E15_Date, E15_VotingMethod, E15_PartyCd
FROM voters;


/* ------- Election 16 ------ */
DROP TABLE IF EXISTS election_E16;

CREATE TABLE election_E16
	(
	 election_E16_id INT PRIMARY KEY AUTO_INCREMENT,
     E16 INT,
     E16_Date DATE,
     E16_VotingMethod CHAR(1),
     E16_PartyCd CHAR(3)
     );
     
INSERT INTO election_e16
	(E16, E16_date, E16_VotingMethod, E16_PartyCd)
SELECT DISTINCT
	E16, E16_Date, E16_VotingMethod, E16_PartyCd
FROM voters;


/* ------- Election 17 ------ */
DROP TABLE IF EXISTS election_E17;

CREATE TABLE election_E17
	(
	 election_E17_id INT PRIMARY KEY AUTO_INCREMENT,
     E17 INT,
     E17_Date DATE,
     E17_VotingMethod CHAR(1),
     E17_PartyCd CHAR(3)
     );
     
INSERT INTO election_e17
	(E17, E17_date, E17_VotingMethod, E17_PartyCd)
SELECT DISTINCT
	E17, E17_Date, E17_VotingMethod, E17_PartyCd
FROM voters;

/* ------- Election 18 ------ */
DROP TABLE IF EXISTS election_E18;

CREATE TABLE election_E18
	(
	 election_E18_id INT PRIMARY KEY AUTO_INCREMENT,
     E18 INT,
     E18_Date DATE,
     E18_VotingMethod CHAR(1),
     E18_PartyCd CHAR(3)
     );
     
INSERT INTO election_e18
	(E18, E18_date, E18_VotingMethod, E18_PartyCd)
SELECT DISTINCT
	E18, E18_Date, E18_VotingMethod, E18_PartyCd
FROM voters;

/* ------- Election 19 ------ */
DROP TABLE IF EXISTS election_E19;

CREATE TABLE election_E19
	(
	 election_E19_id INT PRIMARY KEY AUTO_INCREMENT,
     E19 INT,
     E19_Date DATE,
     E19_VotingMethod CHAR(1),
     E19_PartyCd CHAR(3)
     );
     
INSERT INTO election_e19
	(E19, E19_date, E19_VotingMethod, E19_PartyCd)
SELECT DISTINCT
	E19, E19_Date, E19_VotingMethod, E19_PartyCd
FROM voters;


/* ------- Election 20 ------ */
DROP TABLE IF EXISTS election_E20;

CREATE TABLE election_E20
	(
	 election_E20_id INT PRIMARY KEY AUTO_INCREMENT,
     E20 INT,
     E20_Date DATE,
     E20_VotingMethod CHAR(1),
     E20_PartyCd CHAR(3)
     );
     
INSERT INTO election_e20
	(E20, E20_date, E20_VotingMethod, E20_PartyCd)
SELECT DISTINCT
	E20, E20_Date, E20_VotingMethod, E20_PartyCd
FROM voters;

-- At this point we have created all new tables
-- Now we insert the id columns in the main table so that they can be used as foriegn keys 

/* ---- ID for election1 ------*/
CREATE INDEX E1_index
ON election_e1 (e1, e1_date, e1_votingmethod, e1_partycd);

CREATE INDEX e1_index_v
ON voters (e1, e1_date, e1_votingmethod, e1_partycd);

ALTER TABLE voters
ADD election_E1_id INT REFERENCES election_e1 (election_E1_id);

UPDATE voters
SET election_E1_id = 
 (SELECT election_E1_id
  FROM election_e1 a
  WHERE voters.e1 = a.e1 AND voters.E1_Date = a.E1_Date AND voters.E1_PartyCd = a.e1_partycd AND voters.E1_VotingMethod = a.e1_votingmethod);

/* ---- ID for election2 ------*/
CREATE INDEX E2_index
ON election_e2 (e2, e2_date, e2_votingmethod, e2_partycd);

CREATE INDEX e2_index_v
ON voters (e2, e2_date, e2_votingmethod, e2_partycd);

ALTER TABLE voters
ADD election_E2_id INT REFERENCES election_e2 (election_E2_id);

UPDATE voters
SET election_E2_id = 
 (SELECT election_E2_id
  FROM election_e2 a
  WHERE voters.e2 = a.e2 AND voters.E2_Date = a.E2_Date AND voters.E2_PartyCd = a.e2_partycd AND voters.E2_VotingMethod = a.e2_votingmethod);


/* ---- ID for election3 ------*/
CREATE INDEX E3_index
ON election_e3 (e3, e3_date, e3_votingmethod, e3_partycd);

CREATE INDEX e3_index_v
ON voters (e3, e3_date, e3_votingmethod, e3_partycd);

ALTER TABLE voters
ADD election_E3_id INT REFERENCES election_e3 (election_E3_id);

UPDATE voters
SET election_E3_id = 
 (SELECT election_E3_id
  FROM election_e3 a
  WHERE voters.e3 = a.e3 AND voters.E3_Date = a.E3_Date AND voters.E3_PartyCd = a.e3_partycd AND voters.E3_VotingMethod = a.e3_votingmethod);
    

/* ---- ID for election4 ------*/
CREATE INDEX E4_index
ON election_e4 (e4, e4_date, e4_votingmethod, e4_partycd);

CREATE INDEX e4_index_v
ON voters (e4, e4_date, e4_votingmethod, e4_partycd);

ALTER TABLE voters
ADD election_E4_id INT REFERENCES election_e4 (election_E4_id);

UPDATE voters
SET election_E4_id = 
 (SELECT election_E4_id
  FROM election_e4 a
  WHERE voters.e4 = a.e4 AND voters.E4_Date = a.E4_Date AND voters.E4_PartyCd = a.e4_partycd AND voters.E4_VotingMethod = a.e4_votingmethod);
  
/* ---- ID for election5 ------*/
CREATE INDEX E5_index
ON election_e5 (e5, e5_date, e5_votingmethod, e5_partycd);

CREATE INDEX e5_index_v
ON voters (e5, e5_date, e5_votingmethod, e5_partycd);

ALTER TABLE voters
ADD election_E5_id INT REFERENCES election_e5 (election_E5_id);

UPDATE voters
SET election_E5_id = 
 (SELECT election_E5_id
  FROM election_e5 a
  WHERE voters.e5 = a.e5 AND voters.E5_Date = a.E5_Date AND voters.E5_PartyCd = a.e5_partycd AND voters.E5_VotingMethod = a.e5_votingmethod);
  
/* ---- ID for election6 ------*/
CREATE INDEX E6_index
ON election_e6 (e6, e6_date, e6_votingmethod, e6_partycd);

CREATE INDEX e6_index_v
ON voters (e6, e6_date, e6_votingmethod, e6_partycd);

ALTER TABLE voters
ADD election_E6_id INT REFERENCES election_e6 (election_E6_id);

UPDATE voters
SET election_E6_id = 
 (SELECT election_E6_id
  FROM election_e6 a
  WHERE voters.e6 = a.e6 AND voters.E6_Date = a.E6_Date AND voters.E6_PartyCd = a.e6_partycd AND voters.E6_VotingMethod = a.e6_votingmethod);
  
/* ---- ID for election7 ------*/
CREATE INDEX E7_index
ON election_e7 (e7, e7_date, e7_votingmethod, e7_partycd);

CREATE INDEX e7_index_v
ON voters (e7, e7_date, e7_votingmethod, e7_partycd);

ALTER TABLE voters
ADD election_E7_id INT REFERENCES election_e7 (election_E7_id);

UPDATE voters
SET election_E7_id = 
 (SELECT election_E7_id
  FROM election_e7 a
  WHERE voters.e7 = a.e7 AND voters.E7_Date = a.E7_Date AND voters.E7_PartyCd = a.e7_partycd AND voters.E7_VotingMethod = a.e7_votingmethod);
  
/* ---- ID for election8 ------*/
CREATE INDEX E8_index
ON election_e8 (e8, e8_date, e8_votingmethod, e8_partycd);

CREATE INDEX e8_index_v
ON voters (e8, e8_date, e8_votingmethod, e8_partycd);

ALTER TABLE voters
ADD election_E8_id INT REFERENCES election_e8 (election_E8_id);

UPDATE voters
SET election_E8_id = 
 (SELECT election_E8_id
  FROM election_e8 a
  WHERE voters.e8 = a.e8 AND voters.E8_Date = a.E8_Date AND voters.E8_PartyCd = a.e8_partycd AND voters.E8_VotingMethod = a.e8_votingmethod);
  
/* ---- ID for election9 ------*/
CREATE INDEX E9_index
ON election_e9 (e9, e9_date, e9_votingmethod, e9_partycd);

CREATE INDEX e9_index_v
ON voters (e9, e9_date, e9_votingmethod, e9_partycd);

ALTER TABLE voters
ADD election_E9_id INT REFERENCES election_e9 (election_E9_id);

UPDATE voters
SET election_E9_id = 
 (SELECT election_E9_id
  FROM election_e9 a
  WHERE voters.e9 = a.e9 AND voters.E9_Date = a.E9_Date AND voters.E9_PartyCd = a.e9_partycd AND voters.E9_VotingMethod = a.e9_votingmethod);
  
/* ---- ID for electio10 ------*/
CREATE INDEX E10_index
ON election_e10 (e10, e10_date, e10_votingmethod, e10_partycd);

CREATE INDEX e10_index_v
ON voters (e10, e10_date, e10_votingmethod, e10_partycd);

ALTER TABLE voters
ADD election_E10_id INT REFERENCES election_e10 (election_E10_id);

UPDATE voters
SET election_E10_id = 
 (SELECT election_E10_id
  FROM election_e10 a
  WHERE voters.e10 = a.e10 AND voters.E10_Date = a.E10_Date AND voters.E10_PartyCd = a.e10_partycd AND voters.E10_VotingMethod = a.e10_votingmethod);
  
  /* ---- ID for election11 ------*/
CREATE INDEX E11_index
ON election_e11 (e11, e11_date, e11_votingmethod, e11_partycd);

CREATE INDEX e11_index_v
ON voters (e11, e11_date, e11_votingmethod, e11_partycd);

ALTER TABLE voters
ADD election_E11_id INT REFERENCES election_e11 (election_E11_id);

UPDATE voters
SET election_E11_id = 
 (SELECT election_E11_id
  FROM election_e11 a
  WHERE voters.e11 = a.e11 AND voters.E11_Date = a.E11_Date AND voters.E11_PartyCd = a.e11_partycd AND voters.E11_VotingMethod = a.e11_votingmethod);
  
/* ---- ID for election12 ------*/
CREATE INDEX E12_index
ON election_e12 (e12, e12_date, e12_votingmethod, e12_partycd);

CREATE INDEX e12_index_v
ON voters (e12, e12_date, e12_votingmethod, e12_partycd);

ALTER TABLE voters
ADD election_E12_id INT REFERENCES election_e12 (election_E12_id);

UPDATE voters
SET election_E12_id = 
 (SELECT election_E12_id
  FROM election_e12 a
  WHERE voters.e12 = a.e12 AND voters.E12_Date = a.E12_Date AND voters.E12_PartyCd = a.e12_partycd AND voters.E12_VotingMethod = a.e12_votingmethod);
  
/* ---- ID for election13 ------*/
CREATE INDEX E13_index
ON election_e13 (e13, e13_date, e13_votingmethod, e13_partycd);

CREATE INDEX e13_index_v
ON voters (e13, e13_date, e13_votingmethod, e13_partycd);

ALTER TABLE voters
ADD election_E13_id INT REFERENCES election_e13 (election_E13_id);

UPDATE voters
SET election_E13_id = 
 (SELECT election_E13_id
  FROM election_e13 a
  WHERE voters.e13 = a.e13 AND voters.E13_Date = a.E13_Date AND voters.E13_PartyCd = a.e13_partycd AND voters.E13_VotingMethod = a.e13_votingmethod);
  
/* ---- ID for election14 ------*/
CREATE INDEX E14_index
ON election_e14 (e14, e14_date, e14_votingmethod, e14_partycd);

CREATE INDEX e14_index_v
ON voters (e14, e14_date, e14_votingmethod, e14_partycd);

ALTER TABLE voters
ADD election_E14_id INT REFERENCES election_e14 (election_E14_id);

UPDATE voters
SET election_E14_id = 
 (SELECT election_E14_id
  FROM election_e14 a
  WHERE voters.e14 = a.e14 AND voters.E14_Date = a.E14_Date AND voters.E14_PartyCd = a.e14_partycd AND voters.E14_VotingMethod = a.e14_votingmethod);
  
/* ---- ID for election15 ------*/
CREATE INDEX E15_index
ON election_e15 (e15, e15_date, e15_votingmethod, e15_partycd);

CREATE INDEX e15_index_v
ON voters (e15, e15_date, e15_votingmethod, e15_partycd);

ALTER TABLE voters
ADD election_E15_id INT REFERENCES election_e15 (election_E15_id);

UPDATE voters
SET election_E15_id = 
 (SELECT election_E15_id
  FROM election_e15 a
  WHERE voters.e15 = a.e15 AND voters.E15_Date = a.E15_Date AND voters.E15_PartyCd = a.e15_partycd AND voters.E15_VotingMethod = a.e15_votingmethod);
  
/* ---- ID for election16 ------*/
CREATE INDEX E16_index
ON election_e16 (e16, e16_date, e16_votingmethod, e16_partycd);

CREATE INDEX e16_index_v
ON voters (e16, e16_date, e16_votingmethod, e16_partycd);

ALTER TABLE voters
ADD election_E16_id INT REFERENCES election_e16 (election_E16_id);

UPDATE voters
SET election_E16_id = 
 (SELECT election_E16_id
  FROM election_e16 a
  WHERE voters.e16 = a.e16 AND voters.E16_Date = a.E16_Date AND voters.E16_PartyCd = a.e16_partycd AND voters.E16_VotingMethod = a.e16_votingmethod);
  
/* ---- ID for election17 ------*/
CREATE INDEX E17_index
ON election_e17 (e17, e17_date, e17_votingmethod, e17_partycd);

CREATE INDEX e17_index_v
ON voters (e17, e17_date, e17_votingmethod, e17_partycd);

ALTER TABLE voters
ADD election_E17_id INT REFERENCES election_e17 (election_E17_id);

UPDATE voters
SET election_E17_id = 
 (SELECT election_E17_id
  FROM election_e17 a
  WHERE voters.e17 = a.e17 AND voters.E17_Date = a.E17_Date AND voters.E17_PartyCd = a.e17_partycd AND voters.E17_VotingMethod = a.e17_votingmethod);
  
/* ---- ID for election18 ------*/
CREATE INDEX E18_index
ON election_e18 (e18, e18_date, e18_votingmethod, e18_partycd);

CREATE INDEX e18_index_v
ON voters (e18, e18_date, e18_votingmethod, e18_partycd);

ALTER TABLE voters
ADD election_E18_id INT REFERENCES election_e18 (election_E18_id);

UPDATE voters
SET election_E18_id = 
 (SELECT election_E18_id
  FROM election_e18 a
  WHERE voters.e18 = a.e18 AND voters.E18_Date = a.E18_Date AND voters.E18_PartyCd = a.e18_partycd AND voters.E18_VotingMethod = a.e18_votingmethod);
  
/* ---- ID for election19 ------*/
CREATE INDEX E19_index
ON election_e19 (e19, e19_date, e19_votingmethod, e19_partycd);

CREATE INDEX e19_index_v
ON voters (e19, e19_date, e19_votingmethod, e19_partycd);

ALTER TABLE voters
ADD election_E19_id INT REFERENCES election_e19 (election_E19_id);

UPDATE voters
SET election_E19_id = 
 (SELECT election_E19_id
  FROM election_e19 a
  WHERE voters.e19 = a.e19 AND voters.E19_Date = a.E19_Date AND voters.E19_PartyCd = a.e19_partycd AND voters.E19_VotingMethod = a.e19_votingmethod);
  
/* ---- ID for election20 ------*/
CREATE INDEX E20_index
ON election_e20 (e20, e20_date, e20_votingmethod, e20_partycd);

CREATE INDEX e20_index_v
ON voters (e20, e20_date, e20_votingmethod, e20_partycd);

ALTER TABLE voters
ADD election_E20_id INT REFERENCES election_e20 (election_E20_id);

UPDATE voters
SET election_E20_id = 
 (SELECT election_E20_id
  FROM election_e20 a
  WHERE voters.e20 = a.e20 AND voters.E20_Date = a.E20_Date AND voters.E20_PartyCd = a.e20_partycd AND voters.E20_VotingMethod = a.e20_votingmethod);
  
ALTER TABLE voters
DROP COLUMN dist_info_id;

/* ---- ID for districtinfo ------*/
CREATE INDEX dist_index
ON district_info (ward_desc, cong_dist_desc, super_court_desc, judic_dist_desc, nc_senate_desc, nc_house_desc, county_commiss_desc, school_dist_desc, dist_1_desc);

CREATE INDEX dist_index_v
ON voters (ward_desc, cong_dist_desc, super_court_desc, judic_dist_desc, nc_senate_desc, nc_house_desc, county_commiss_desc, school_dist_desc, dist_1_desc);

ALTER TABLE voters
ADD dist_info_id INT REFERENCES district_info (dist_info_id);

UPDATE voters
SET dist_info_id = 
 (SELECT dist_info_id
  FROM district_info a
  WHERE voters.ward_desc = a.ward_desc AND voters.cong_dist_desc = a.cong_dist_desc AND voters.super_court_desc = a.super_court_desc AND voters.judic_dist_desc = a.judic_dist_desc AND voters.nc_senate_desc = a.nc_senate_desc AND voters.nc_house_desc = a.nc_house_desc AND voters.county_commiss_desc = a.county_commiss_desc AND voters.school_dist_desc = a.school_dist_desc AND voters.dist_1_desc = a.dist_1_desc);

/* ---- ID for pct_data ---------- */

CREATE INDEX pct_index
ON pct_data (precinct_desc, party_cd, pct_portion);

CREATE INDEX pct_index_v
ON voters (precinct_desc, party_cd, pct_portion);

ALTER TABLE voters
ADD pct_key INT REFERENCES pct_data (pct_key);

UPDATE voters
SET pct_key =
	(SELECT pct_key
     FROM pct_data  a
     WHERE voters.precinct_desc = a.precinct_desc AND voters.party_cd = a.party_cd AND voters.pct_portion = a.pct_portion);

/* ---- ID for race_data ------- */
CREATE INDEX race_ethnic_index
ON race_data (race_code, ethnic_code, sex_code);

CREATE INDEX race_ethnic_index_v
ON voters (race_code, ethnic_code, sex_code);

ALTER TABLE voters
ADD race_ethinic_key INT REFERENCES race_data (race_ethinic_key);

UPDATE voters
SET race_ethinic_key =
	(SELECT race_ethinic_key
     FROM race_data a
     WHERE voters.race_code = a.race_code AND voters.ethnic_code = a.ethnic_code AND voters.sex_code = a.sex_code);

-- Carving out the main table - voters_mod from the original voters table
-- This will contain only the necessary columns basically get rid of columns from voter which are now part of the new tables

DROP TABLE IF EXISTS voters_mod;
CREATE TABLE voters_mod AS
SELECT 
	age,
    first_name,
    middle_name,
    last_name,
    name_suffix_lbl,
    full_name_mail,
    mail_addr1,
    mail_addr2,
    mail_addr3,
    mail_addr4,
    mail_city_state_zip,
    house_num,
    half_code,
    street_dir,
    street_name,
    street_type_cd,
    street_sufx_cd,
    unit_designator,
    unit_num,
    res_city_desc,
    state_cd,
    zip_code,
    registr_dt,
    voter_reg_num,
    status_cd,
    municipality_desc,
    dist_info_id,
    election_E1_id,
    election_E2_id,
    election_E3_id,
    election_E4_id,
    election_E5_id,
    election_E6_id,
    election_E7_id,
    election_E8_id,
    election_E9_id,
    election_E10_id,
    election_E11_id,
    election_E12_id,
    election_E13_id,
    election_E14_id,
    election_E15_id,
    election_E16_id,
    election_E17_id,
    election_E18_id,
    election_E19_id,
    election_E20_id,
    pct_key,
    race_ethinic_key
FROM voters;

-- Creating primary key and foreign keys

ALTER TABLE voters_mod
ADD PRIMARY KEY (voter_reg_num);

ALTER TABLE voters_mod
ADD CONSTRAINT district_info_fk FOREIGN KEY (dist_info_id) REFERENCES district_info (dist_info_id),
ADD CONSTRAINT pct_data_fk FOREIGN KEY (pct_key) REFERENCES pct_data (pct_key),
ADD CONSTRAINT race_data_fk FOREIGN KEY (race_ethinic_key) REFERENCES race_data (race_ethinic_key),
ADD CONSTRAINT election_e1_fk FOREIGN KEY (election_e1_id) REFERENCES election_e1 (election_e1_id),
ADD CONSTRAINT election_e2_fk FOREIGN KEY (election_e2_id) REFERENCES election_e2 (election_e2_id),
ADD CONSTRAINT election_e3_fk FOREIGN KEY (election_e3_id) REFERENCES election_e3 (election_e3_id),
ADD CONSTRAINT election_e4_fk FOREIGN KEY (election_e4_id) REFERENCES election_e4 (election_e4_id),
ADD CONSTRAINT election_e5_fk FOREIGN KEY (election_e5_id) REFERENCES election_e5 (election_e5_id),
ADD CONSTRAINT election_e6_fk FOREIGN KEY (election_e6_id) REFERENCES election_e6 (election_e6_id),
ADD CONSTRAINT election_e7_fk FOREIGN KEY (election_e7_id) REFERENCES election_e7 (election_e7_id),
ADD CONSTRAINT election_e8_fk FOREIGN KEY (election_e8_id) REFERENCES election_e8 (election_e8_id),
ADD CONSTRAINT election_e9_fk FOREIGN KEY (election_e9_id) REFERENCES election_e9 (election_e9_id),
ADD CONSTRAINT election_e10_fk FOREIGN KEY (election_e10_id) REFERENCES election_e10 (election_e10_id),
ADD CONSTRAINT election_e11_fk FOREIGN KEY (election_e11_id) REFERENCES election_e11 (election_e11_id),
ADD CONSTRAINT election_e12_fk FOREIGN KEY (election_e12_id) REFERENCES election_e12 (election_e12_id),
ADD CONSTRAINT election_e13_fk FOREIGN KEY (election_e13_id) REFERENCES election_e13 (election_e13_id),
ADD CONSTRAINT election_e14_fk FOREIGN KEY (election_e14_id) REFERENCES election_e14 (election_e14_id),
ADD CONSTRAINT election_e15_fk FOREIGN KEY (election_e15_id) REFERENCES election_e15 (election_e15_id),
ADD CONSTRAINT election_e16_fk FOREIGN KEY (election_e16_id) REFERENCES election_e16 (election_e16_id),
ADD CONSTRAINT election_e17_fk FOREIGN KEY (election_e17_id) REFERENCES election_e17 (election_e17_id),
ADD CONSTRAINT election_e18_fk FOREIGN KEY (election_e18_id) REFERENCES election_e18 (election_e18_id),
ADD CONSTRAINT election_e19_fk FOREIGN KEY (election_e19_id) REFERENCES election_e19 (election_e19_id),
ADD CONSTRAINT election_e20_fk FOREIGN KEY (election_e20_id) REFERENCES election_e20 (election_e20_id);

-- Count statements for all the newly created tables

SELECT COUNT(*) AS '# rows in main table'
FROM voters_mod;

SELECT count(*) AS '# rows in district_info'
FROM district_info;

SELECT COUNT(*) AS '# rows in election_e1'
FROM election_e1;

SELECT COUNT(*) AS '# rows in election_e2'
FROM election_e2;

SELECT COUNT(*) AS '# rows in election_e3'
FROM election_e3;

SELECT COUNT(*) AS '# rows in election_e4'
FROM election_e4;

SELECT COUNT(*) AS '# rows in election_e5'
FROM election_e5;

SELECT COUNT(*) AS '# rows in election_e6'
FROM election_e6;

SELECT COUNT(*) AS '# rows in election_e7'
FROM election_e7;

SELECT COUNT(*) AS '# rows in election_e8'
FROM election_e8;

SELECT COUNT(*) AS '# rows in election_e9'
FROM election_e9;

SELECT COUNT(*) AS '# rows in election_e10'
FROM election_e10;

SELECT COUNT(*) AS '# rows in election_e11'
FROM election_e11;

SELECT COUNT(*) AS '# rows in election_e12'
FROM election_e12;

SELECT COUNT(*) AS '# rows in election_e13'
FROM election_e13;

SELECT COUNT(*) AS '# rows in election_e14'
FROM election_e14;

SELECT COUNT(*) AS '# rows in election_e15'
FROM election_e15;

SELECT COUNT(*) AS '# rows in election_e16'
FROM election_e16;

SELECT COUNT(*) AS '# rows in election_e17'
FROM election_e17;

SELECT COUNT(*) AS '# rows in election_e18'
FROM election_e18;

SELECT COUNT(*) AS '# rows in election_e19'
FROM election_e19;

SELECT COUNT(*) AS '# rows in election_e20'
FROM election_e20;

SELECT COUNT(*) AS '* rows in pct_data'
FROM pct_data;

SELECT COUNT(*) AS '# rows in race_data'
FROM race_data;

-- joint statement to get the original table back

SELECT precinct_desc, party_cd, race_code, ethnic_code, sex_code, age, pct_portion, first_name, middle_name, last_name, name_suffix_lbl,
		full_name_mail, mail_addr1, mail_addr2, mail_addr3, mail_addr4, mail_city_state_zip, house_num, half_code, street_dir,street_name,
        street_type_cd, street_sufx_cd, unit_designator, unit_num, res_city_desc, state_cd, zip_code, registr_dt, voter_reg_num, status_cd,
        municipality_desc, ward_desc, cong_dist_desc, super_court_desc, judic_dist_desc, nc_senate_desc, nc_house_desc, county_commiss_desc,
        school_dist_desc, dist_1_desc, E1, E1_Date, E1_VotingMethod, E1_PartyCd,E1, E2, E2_Date, E2_VotingMethod, E2_PartyCd, E3, E3_Date, 
        E3_VotingMethod, E3_PartyCd, E4, E4_Date, E4_VotingMethod, E4_PartyCd, E5, E5_Date, E5_VotingMethod, E5_PartyCd, E6, E6_Date, 
        E6_VotingMethod, E6_PartyCd, E7, E7_Date, E7_VotingMethod, E7_PartyCd, E8, E8_Date, E8_VotingMethod, E8_PartyCd, E9, E9_Date, 
        E9_VotingMethod, E9_PartyCd, E10, E10_Date, E10_VotingMethod, E10_PartyCd, E11, E11_Date, E11_VotingMethod, E11_PartyCd, E12, E12_Date,
        E12_VotingMethod, E12_PartyCd, E13, E13_Date, E13_VotingMethod, E13_PartyCd, E14, E14_Date, E14_VotingMethod, E14_PartyCd, E15, E15_Date, 
        E15_VotingMethod, E15_PartyCd, E16, E16_Date, E16_VotingMethod, E16_PartyCd, E17, E17_Date, E17_VotingMethod, E17_PartyCd, E18, E18_Date, 
        E18_VotingMethod, E18_PartyCd, E19, E19_Date, E19_VotingMethod, E19_PartyCd, E20, E20_Date, E20_VotingMethod, E20_PartyCd
FROM voters_mod
	JOIN pct_data USING (pct_key)
    JOIN race_data USING (race_ethinic_key)
    JOIN district_info USING (dist_info_id)
    JOIN election_e1 USING (election_e1_id)
    JOIN election_e2 USING (election_e2_id)
    JOIN election_e3 USING (election_e3_id)
    JOIN election_e4 USING (election_e4_id)
    JOIN election_e5 USING (election_e5_id)
    JOIN election_e6 USING (election_e6_id)
    JOIN election_e7 USING (election_e7_id)
    JOIN election_e8 USING (election_e8_id)
    JOIN election_e9 USING (election_e9_id)
    JOIN election_e10 USING (election_e10_id)
    JOIN election_e11 USING (election_e11_id)
    JOIN election_e12 USING (election_e12_id)
    JOIN election_e13 USING (election_e13_id)
    JOIN election_e14 USING (election_e14_id)
    JOIN election_e15 USING (election_e15_id)
    JOIN election_e16 USING (election_e16_id)
    JOIN election_e17 USING (election_e17_id)
    JOIN election_e18 USING (election_e18_id)
    JOIN election_e19 USING (election_e19_id)
    JOIN election_e20 USING (election_e20_id)
LIMIT 100;
