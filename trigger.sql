Delimiter $$;
CREATE TRIGGER `before_insert_record`
before insert ON Record 
FOR EACH ROW
BEGIN
  SET @IDDoctor := NEW.IDDoctor; 
  SET @IDPatient := NEW.IDPatient; 
  SET @rTime := NEW.RecordingTime;
  INSERT into Messeges(Messege) Values('wp');
  #SIGNAL SQLSTATE '45000'
  #SET MESSAGE_TEXT = 'MyError:Cannot add or update row: only one active row allowed per type';
  INSERT INTO Record (IDDoctor,IDPatient,RecordingTime) 
		VALUES (@IDDoctor,@IDPatient,@rTime);
  Insert into Messeges(Messege) Values('wp');        
END;