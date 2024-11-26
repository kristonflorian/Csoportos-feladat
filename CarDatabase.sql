create TABLE squattage (
  zipcode int NOT NULL,
  squattagename varchar(75),
  CONSTRAINT pk_squattage PRIMARY KEY (zipcode)
);

CREATE TABLE machines (
  gid int NOT NULL,
  zipcode int NOT NULL,
  fillpercentage int,
  machineaddress varchar(100),
  CONSTRAINT pk_machines PRIMARY KEY (gid),
  CONSTRAINT fk_machinesquat FOREIGN KEY (zipcode) REFERENCES squattage(zipcode)
);

CREATE TABLE users (
  fid int NOT NULL,
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
  aid int NOT NULL,
  acname varchar(75),
  requirements int,
  CONSTRAINT pk_achivements PRIMARY KEY (aid),
);

INSERT INTO achivements VALUES
(1,"Gyűjts össze 25 flakont!",25),
(1,"Gyűjts össze 50 flakont!",50),
(1,"Gyűjts össze 75 flakont!",75),
(1,"Gyűjts össze 100 flakont!",100),
(1,"Gyűjts össze 125 flakont!",125),
(1,"Gyűjts össze 150 flakont!",150),
(1,"Gyűjts össze 175 flakont!",175),
(1,"Gyűjts össze 200 flakont!",200),
(1,"Gyűjts össze 225 flakont!",225),
(1,"Gyűjts össze 250 flakont!",250),
(1,"Gyűjts össze 275 flakont!",275),
(1,"Gyűjts össze 300 flakont!",300),
(1,"Gyűjts össze 325 flakont!",325),