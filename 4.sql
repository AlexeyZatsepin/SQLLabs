select Diagnoses.Title_diagnosis,Patient.FIOPatient from Diagnoses,Patient 
where Patient.IDDiagnosis=Diagnoses.IDDiagnosis;

select Patient.FIOPatient,Doctor.FIODoctor,Record.RecordingTime from Patient,Doctor,Record 
where (DATE(Record.RecordingTime)='2015-01-12') 
AND (Record.IDPatient=Patient.IDPatient)
AND (Doctor.IDDoctor=Record.IDDoctor);

select Doctor.FIODoctor from Doctor,Patient,Record 
where (Record.IDPatient=Patient.IDPatient) AND (Record.IDDoctor=Doctor.IDDoctor) AND (Patient.FIOPatient='');

select Title_position,count(RecordingTime) as sum_records from Record,Doctor,Positions
where (Doctor.IDPosition=Positions.IDPosition) 
and (Doctor.IDDoctor=Record.IDDoctor)
group by Title_position;

