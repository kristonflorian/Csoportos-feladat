create TABLE settlement (
  zipcode int NOT NULL,
  settlementname varchar(75),
  CONSTRAINT pk_squattage PRIMARY KEY (zipcode)
);

CREATE TABLE machines (
  gid int NOT NULL AUTO_INCREMENT,
  zipcode int NOT NULL,
  fillpercentage int,
  machineaddress varchar(100),
  CONSTRAINT pk_machines PRIMARY KEY (gid),
  CONSTRAINT fk_machinesquat FOREIGN KEY (zipcode) REFERENCES squattage(zipcode),
  CONSTRAINT ck_machine_fill_range CHECK (fillpercentage >= 0 AND fillpercentage <= 100)
);

CREATE TABLE users (
  fid int NOT NULL AUTO_INCREMENT,
  username varchar(30) NOT NULL,
  pass varchar(125) NOT NULL,
  useraddress varchar(100),
  zipcode int,
  bottlecount int NOT NULL,
  achivements varchar(250),
  CONSTRAINT pk_users PRIMARY KEY (fid),
  CONSTRAINT fk_userssquat FOREIGN KEY (zipcode) REFERENCES squattage(zipcode)
);
CREATE TABLE achivements(
  aid int NOT NULL AUTO_INCREMENT,
  acname varchar(75),
  requirements int,
  CONSTRAINT pk_achivements PRIMARY KEY (aid)
);

INSERT INTO achivements VALUES
(1,"Gyűjts össze 25 flakont!",25),
(2,"Gyűjts össze 50 flakont!",50),
(3,"Gyűjts össze 75 flakont!",75),
(4,"Gyűjts össze 100 flakont!",100),
(5,"Gyűjts össze 125 flakont!",125),
(6,"Gyűjts össze 150 flakont!",150),
(7,"Gyűjts össze 175 flakont!",175),
(8,"Gyűjts össze 200 flakont!",200),
(9,"Gyűjts össze 225 flakont!",225),
(10,"Gyűjts össze 250 flakont!",250),
(11,"Gyűjts össze 275 flakont!",275),
(12,"Gyűjts össze 300 flakont!",300),
(13,"Gyűjts össze 325 flakont!",325);