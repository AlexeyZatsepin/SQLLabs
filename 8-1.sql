delimiter $$
CREATE TRIGGER `before_insert_new_diagnos_for_patient`
before insert ON diagnoses_for_patients_tmp
FOR EACH ROW
BEGIN 
  DECLARE fio varchar(30);
  DECLARE title varchar(30);
  DECLARE bday date;
  DECLARE id_d int;
  SET @FIO := NEW.FIOPatient; 
  SET @title := NEW.Title_diagnosis;
  #SELECT BirthdayPatient INTO bday FROM Patient WHere Patient.FIOPatient=@FIO;
  #SELECT IDDiagnosis INTO id_d FROM Diagnoses WHere Diagnoses.Title_diagnosis=@title;
  IF (@title in (SELECT Title_diagnosis from diagnoses_for_patients)) and (fio in (SELECT FIOPatient from diagnoses_for_patients)) THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'MyError:Duplicate';
  else if (@title in (SELECT Title_diagnosis from diagnoses_for_patients)) then
	INSERT INTO Patient(FIOPatient, BirthdayPatient, IDDiagnosis)
	VALUES(@FIO,bday,id_d);
  else 
    INSERT INTO Diagnoses(Title_diagnosis)
    VALUES(@title);
    SELECT IDDiagnosis INTO id_d FROM Diagnoses WHere Diagnoses.Title_diagnosis=@title;
	INSERT INTO Patient(FIOPatient, BirthdayPatient, IDDiagnosis)
	VALUES(@FIO,bday,id_d);
  END IF;
  end if;
END;