delimiter $$;
CREATE TRIGGER `before_insert_record`
before insert ON hospital.for_today
FOR EACH ROW
BEGIN 
  DECLARE id_patient int;
  DECLARE rec_time time;
  SET @IDDoctor := NEW.IDDoctor; 
  SET @IDPatient := NEW.IDPatient; 
  SET @recTime := NEW.RecordingTime;
  SELECT Record.RecordingTime,Record.IDPatient INTO rec_time,id_patient from Record 
  where Record.IDDoctor=@IDDoctor AND Record.IDPatient=@IDPatient;
  IF (id_patient=@IDPatient) and (day(@recTime)=day(rec_time)) THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'MyError:Patient have already been today';
  END IF;
END;
