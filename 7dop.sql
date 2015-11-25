
drop procedure if exists `new_doctor`;
DELIMITER //
create procedure `new_doctor` (IN fio varchar(30),IN bday date,IN pos_id int,IN spec_id int)
language sql
SQL security invoker
BEGIN
declare bd date;
if fio not in (select FIODoctor FROM Doctor) then 
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec)
VALUES(fio,bday,pos_id,spec_id);
#INSERT INTO Messeges(Messege) Value('fio not in Doctor');
else
	select Doctor.BirthdayDoctor into bd from Doctor where Doctor.FIODoctor=fio;
	if bd<>bday then
		INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec)
		VALUES(fio,bday,pos_id,spec_id);
        #INSERT INTO Messeges(Messege) Value('fio in Doctor and dates <>');
        else 
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'MyError:Doctors must be unique';
	end if;

end if;
end//