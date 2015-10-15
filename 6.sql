Create view Full_Info AS
Select Patient.FIOPatient,Patient.BirthdayPatient,Diagnoses.Title_diagnosis,Record.RecordingTime
From Record,Patient,Diagnoses 
WHERE (Diagnoses.IDDiagnosis=Patient.IDDiagnosis)
AND (Record.IDPatient=Patient.IDPatient);

select * From Full_Info;

create view diagnoses_for_patients AS
select Diagnoses.Title_diagnosis,Patient.FIOPatient from Diagnoses,Patient 
where Patient.IDDiagnosis=Diagnoses.IDDiagnosis;

create view patients_list AS
select Patient.FIOPatient,Doctor.FIODoctor,Record.RecordingTime from Patient,Doctor,Record 
where (DATE(Record.RecordingTime)='2015-01-12') 
AND (Record.IDPatient=Patient.IDPatient)
AND (Doctor.IDDoctor=Record.IDDoctor);

create view doctors_for_me AS
select Doctor.FIODoctor from Doctor,Patient,Record 
where (Record.IDPatient=Patient.IDPatient) AND (Record.IDDoctor=Doctor.IDDoctor) AND (Patient.FIOPatient='');

