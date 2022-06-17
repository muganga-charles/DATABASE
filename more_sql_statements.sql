

SELECT attendant_number,first_name,last_name,phone_number,branch_id,date_of_birth FROM attendants;
INSERT INTO attendants VALUES(100,'Gerald','Gideon','0757382899',112,'12-05-2008'); 

SELECT branch_id,star_type,packages,room_type,total_amount,cash_payed FROM hotel_records;
ALTER TABLE hotel_records
ADD room_number INT;

SELECT branch_id,branch_name,manager_id FROM branches;

SELECT branch_id,branch_name,manager_id FROM branches;
DROP TABLE branches;


SELECT star_id,names,branch_id,employees_id FROM hotel_star;

SELECT star_id,names,branch_id,employees_id FROM hotel_star;


ALTER TABLE hotel_star ADD COLUMN value VARCHAR(20);

SELECT star_id,names,`value` FROM hotel_star;


SELECT branch_id,branch_name,manager_id FROM branches;

SELECT * FROM employees;

SELECT branch_id,branch_name,manager_id FROM branches;
