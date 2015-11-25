DELIMITER // 
CREATE PROCEDURE `hello` () 
LANGUAGE SQL 
DETERMINISTIC 
SQL SECURITY DEFINER 
COMMENT 'A procedure' 
BEGIN 
    SELECT 'Hello World !'; 
END// 

CALL hello;

DELIMITER // 
CREATE PROCEDURE `avg_record` ()
LANGUAGE SQL
DETERMINISTIC 
SQL SECURITY DEFINER 
BEGIN
	select Title_position,count(RecordingTime) as sum_records from Record,Doctor,Positions
	where (Doctor.IDPosition=Positions.IDPosition) 
	and (Doctor.IDDoctor=Record.IDDoctor)
	group by Title_position;
END//

CALL avg_record;

DELIMITER // 
CREATE PROCEDURE `records_for_user` (IN var varchar(30))
LANGUAGE SQL
DETERMINISTIC 
SQL SECURITY invoker
BEGIN
	select Doctor.FIODoctor,Record.RecordingTime from Doctor,Patient,Record 
	where (Record.IDPatient=Patient.IDPatient) 
    AND (Record.IDDoctor=Doctor.IDDoctor) 
    AND (Patient.FIOPatient=var);
END//


delimiter //


call records_for_user('Zatsepin Alex Artemovich');

