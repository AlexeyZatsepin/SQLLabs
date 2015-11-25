#Тригери:
#1. На додавання запису на прийом до лікаря. Якщо зазначений пацієнт уже записаний до лікаря 
#на зазначену дату,заборонити додавання запису.
#2. Створити вистава «Прийом на сьогодні» з полями «ПІБ лікаря», «ПІБ пацієнта», «Діагноз».
# Оновлювати вистава «Прийом на сьогодні».


Delimiter $$;
CREATE TRIGGER `before_insert_record`
before insert ON hospital.Record 
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



