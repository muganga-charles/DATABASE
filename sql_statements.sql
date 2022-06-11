CREATE DATABASE hotel management
    DEFAULT CHARACTER SET = 'utf8mb4';
CREATE TABLE branches(  
    branch_id INT NOT NULL PRIMARY KEY,
    branch_name VARCHAR(255) NOT NULL,
    manager_id INT NOT NULL
);

CREATE TABLE customers (
    room_number INT PRIMARY KEY,
    branch_id INT NOT NULL,
    star_type INT NOT NULL,
    packages INT,
    total_amount INT,
    cash_payed INT,
    balance INT
);

CREATE TABLE hotel (
    names VARCHAR(225) NOT NULL PRIMARY KEY,
    passwords VARCHAR(225),
    branch_id INT NOT NULL,
    employees_id INT
);


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(225),
    Last_name VARCHAR(225),
    date_of_birth VARCHAR(225),
    hotel_id INT NOT NULL,
    branch_id INT,
    total_amount INT
);

CREATE TABLE branches (
    branch_id INT NOT NULL PRIMARY KEY,
    branch_name INT NOT NULL,
    manager_id INT NOT NULL
);
ALTER TABLE employees ADD COLUMN sex VARCHAR(2);

ALTER TABLE employees ADD FOREIGN KEY (branch_id) REFERENCES branches(branch_id);

ALTER TABLE branches ADD FOREIGN KEY (manager_id) REFERENCES employees(employee_id);

ALTER TABLE customers ADD FOREIGN KEY (client_id) REFERENCES employees(employee_id);

ALTER TABLE hotel_records ADD FOREIGN KEY (branch_id) REFERENCES branches(branch_id);
DROP TABLE hotel;
DELETE FROM customers WHERE client_id = 644;



INSERT INTO branches VALUES (112,'KAMPALA ',400);
INSERT INTO branches VALUES (113,'ENTEBBE',413);
INSERT INTO branches VALUES (114,'MUKONO',406);
INSERT INTO branches VALUES (115,'MPIGI',409);
INSERT INTO branches VALUES (116,'MBARARA',402);


INSERT INTO hotel_star VALUES (1,'FIVE STAR HOTEL','FIRST CLASS');
INSERT INTO hotel_star VALUES (2,'THREE STAR HOTEL','SECOND CLASS');
INSERT INTO hotel_star VALUES (3, 'ORDINARY HOTEL','MODERATE CLASS');




INSERT INTO employees VALUES (400,'David','Wallace','1967-11-17',1,112,250000,'M');
INSERT INTO employees VALUES (401,'John','Doe','1990-01-01',1,112,490000,'M');
INSERT INTO employees VALUES (402,'Jane','Levinson','1961-05-11',1,114,490000,'F');
INSERT INTO employees VALUES (403,'Micheal','Scott','1964-03-15',1,113,590000,'M');
INSERT INTO employees VALUES (404,'Robert','Pattinson','1971-06-25',1,113,600000,'M');
INSERT INTO employees VALUES (405,'Jennifer','Aniston','1980-02-05',1,116,2400000,'F');
INSERT INTO employees VALUES (406,'Angella','Martin','1958-02-19',1,113,8400000,'F');
INSERT INTO employees VALUES (407,'John','malek','1991-07-31',2,114,4500000,'M');
INSERT INTO employees VALUES (408,'Jane','Levinson','1991-05-11',2,115,8900000,'F');
INSERT INTO employees VALUES (409,'Mike','Son','1987-03-15',2,114,650000,'M');
INSERT INTO employees VALUES (410,'Robereto','Pattinson','1992-06-25',2,114,8000000,'M');
INSERT INTO employees VALUES (411,'Sektor','Adrian','1981-12-05',3,114,1190000,'F');
INSERT INTO employees VALUES (412,'Angel','luyg','1995-11-19',3,114,340000,'F');
INSERT INTO employees VALUES (413,'Jonner','kult','1998-08-01',3,116,7800000,'M');
INSERT INTO employees VALUES (414,'Jane','Gatlok','1990-03-18',3,116,6700000,'F');
INSERT INTO employees VALUES (415,'solomon','Boy','2001-07-01',3,115,890000,'M');


