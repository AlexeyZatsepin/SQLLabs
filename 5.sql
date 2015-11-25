select FIOPatient FROM hospital.Patient AS P
Where (year(curdate())-year(BirthdayPatient))>
(SELECT AVG(year(curdate())-year(BirthdayPatient)) FROM Patient);

SELECT FIODoctor,(year(curdate())-year(BirthdayDoctor)) AS age FROM Doctor AS D
	WHERE (year(curdate())-year(BirthdayDoctor))=(
    SELECT MIN(year(curdate())-year(BirthdayDoctor)) FROM Doctor);

SELECT FIOPatient FROM Patient
	WHERE FIOPatient IN 
    (SELECT FIOPatient FROM 
    (Patient INNER JOIN (Doctor INNER JOIN Record ON Doctor.IDDoctor=Record.IDDoctor) 
    ON Patient.IDPatient=Record.IDPatient)
		GROUP BY(FIOPatient)
		HAVING COUNT(FIOPatient)>1);


#вывести позицию для которых больше всего пациентов


SELECT Title_position,count(FIOPatient) FROM 
    (Positions INNER JOIN(Patient INNER JOIN (Doctor INNER JOIN Record ON Doctor.IDDoctor=Record.IDDoctor) 
    ON Patient.IDPatient=Record.IDPatient)ON Positions.IDPosition=Doctor.IDPosition)
		GROUP BY(Title_position)
        having count(FIOPatient)>=all
        (select count(FIOPatient) from (Positions INNER JOIN(Patient INNER JOIN (Doctor INNER JOIN Record ON Doctor.IDDoctor=Record.IDDoctor) 
    ON Patient.IDPatient=Record.IDPatient)ON Positions.IDPosition=Doctor.IDPosition)
    group by (Title_position)) ;

