INSERT INTO hospital.Record (IDDoctor,IDPatient,RecordingTime) 
     	VALUES (2,2,'3000-05-13 12:00:00');
        
        
drop trigger before_insert_record;
 
SELECT IDPatient FROM Record 
  Where Record.IDDoctor=2;
  
use hospital;

  
call records_for_user('Zatsepin Alex Artemovich');


create view for_today AS
SELECT FIODoctor,FIOPatient,Title_diagnosis FROM Diagnoses,Patient,Doctor,Record
WHERE Diagnoses.IDDiagnosis=Patient.IDDiagnosis 
AND Record.IDPatient=Patient.IDPatient AND Record.IDDoctor=Doctor.IDDoctor AND day(Record.RecordingTime)=day(curdate());


select * from for_today;
call new_doctor('as kin jo','1952-12-07',1,2);
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec)
VALUES('as kin jo','1952-12-07',1,2);

drop trigger before_insert_new_diagnos_for_patient;

use hospital;


call new_doctor('kin ya min','1982-12-17',2,4);