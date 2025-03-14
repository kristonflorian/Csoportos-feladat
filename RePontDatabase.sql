CREATE TABLE counties(
 cid int NOT NULL AUTO_INCREMENT,
 countyname varchar(30) UNIQUE NOT NULL,
 CONSTRAINT pk_counties PRIMARY KEY (cid),
);
create TABLE settlements (
  zipcode int NOT NULL UNIQUE,
  settlementname varchar(75) NOT NULL,
  county int NOT NULL,
  CONSTRAINT pk_settlements PRIMARY KEY (zipcode),
  CONSTRAINT fk_settlementcounty FOREIGN KEY (county) REFERENCES counties(cid)
);

CREATE TABLE machines (
  gid int NOT NULL AUTO_INCREMENT,
  zipcode int NOT NULL,
  fillpercentage int,
  machineaddress varchar(100) NOT NULL,
  CONSTRAINT pk_machines PRIMARY KEY (gid),
  CONSTRAINT fk_machinesquat FOREIGN KEY (zipcode) REFERENCES settlements(zipcode),
  CONSTRAINT ck_machine_fill_range CHECK (fillpercentage >= 0 AND fillpercentage <= 100)
);

CREATE TABLE users (
  fid int NOT NULL AUTO_INCREMENT,
  username varchar(30) NOT NULL UNIQUE,
  pass varchar(125) NOT NULL,
  email varchar(65) NOT NULL UNIQUE
  useraddress varchar(100),
  zipcode int NOT NULL,
  bottlecount int NOT NULL,
  achivements varchar(250),
  CONSTRAINT pk_users PRIMARY KEY (fid),
  CONSTRAINT fk_usersset FOREIGN KEY (zipcode) REFERENCES settlements(zipcode)
);
CREATE TABLE achivements(
  aid int NOT NULL AUTO_INCREMENT,
  acname varchar(75),
  requirements int NOT NULL,
  CONSTRAINT pk_achivements PRIMARY KEY (aid)
);