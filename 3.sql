INSERT INTO Positions(Title_position) VALUES('head physician');
INSERT INTO Positions(Title_position) VALUES('surgeon');
INSERT INTO Positions(Title_position) VALUES('orthopedist');
INSERT INTO Positions(Title_position) VALUES('clinical pharmacist');
INSERT INTO Positions(Title_position) VALUES('cardiologist');
INSERT INTO Positions(Title_position) VALUES('intern');
INSERT INTO Positions(Title_position) VALUES('medical assistant');
INSERT INTO Positions(Title_position) VALUES('nurse');
INSERT INTO Positions(Title_position) VALUES('psychologist');
INSERT INTO Positions(Title_position) VALUES('family physician');
INSERT INTO Positions(Title_position) VALUES('ophthalmologist');
INSERT INTO Positions(Title_position) VALUES('pediatrician');


INSERT INTO Diagnoses(Title_diagnosis) VALUES('allergy');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('asthma');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('autism');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('bronchitis');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('mumps');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('neurosis');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('cancer');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('sarcoma');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('schizophrenia');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('flu');
INSERT INTO Diagnoses(Title_diagnosis) VALUES('alcoholism');

INSERT INTO Specializations(Title_spec) VALUES('surgery');
INSERT INTO Specializations(Title_spec) VALUES('paediatrics');
INSERT INTO Specializations(Title_spec) VALUES('therapeutic profile');
INSERT INTO Specializations(Title_spec) VALUES('orthopaedics');
INSERT INTO Specializations(Title_spec) VALUES('neuropsychiatric profile');
INSERT INTO Specializations(Title_spec) VALUES('urology');
INSERT INTO Specializations(Title_spec) VALUES('cardiology');
INSERT INTO Specializations(Title_spec) VALUES('endocrinology');
INSERT INTO Specializations(Title_spec) VALUES('gastroenterology');
INSERT INTO Specializations(Title_spec) VALUES('ophthalmology');


INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Lukashenko Anton Maksimovich', '1974-05-17', 1,3);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Tretina Alla Maksimovna', '1974-12-07', 8,2);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Lukashenko Marina Andreevna', '1979-04-15', 2,1);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Tretina Anastasia Maksimovna', '1988-05-17', 3,9);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Konoplyanka Yevgeniy Olegovich', '1979-01-07', 7,8);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Zakarlyka Henadiy Evgenievish', '1972-05-17', 5,6);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Kozhorko Ivan Haritonovich', '1955-12-19', 10,4);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Ushakova Olga Valeryevna', '1962-01-04', 9,5);
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Mhkiryan Henrich', '1981-07-25', 6,3);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Jones Joe', '1985-12-23', 4,2);	
INSERT INTO Doctor(FIODoctor, BirthdayDoctor, IDPosition, IDSpec) VALUES('Stivenson John', '1988-07-13', 4,1);	


INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Danilina Polina Aleksandrovna', '1972-05-23',6);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Zatsepin Alex Artemovich', '1990-05-29',5);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Zakarlyka Sergiy Vitalevich', '1960-02-11',2);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Konorev Sanya Vitalevich', '1940-12-01',10);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Ushankov Pavel Markovic', '1921-09-31',9);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Oplovets Pavel Markovic', '1981-11-30',8);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Atemenko Valeriy Rostislavovich', '1984-01-03',7);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Artemenko Valeriy Tarasovich', '1995-01-03',6);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Kozhorman Izya', '1994-01-03',5);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Kopolovets Ivan Stepanovich', '1975-11-23',3);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Silvestr Stalone', '1975-11-23',4);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Shuka Evgeniy Olegovich', '1995-06-03',2);
INSERT INTO Patient(FIOPatient, BirthdayPatient,IDDiagnosis) VALUES('Shika Inga Evgenievna', '1996-12-19',1);


INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (1, 2, '2015-02-12 15:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (5, 2, '2015-02-12 13:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (3, 4, '2015-02-12 14:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (2, 2, '2015-02-12 12:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (2, 2, '2015-01-12 12:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (1, 3, '2015-01-12 11:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (7, 5, '2015-01-12 15:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (4, 7, '2015-01-12 15:00:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (2, 3, '2015-01-12 17:30:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (6, 4, '2015-01-15 17:00:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (6, 4, '2015-01-15 13:00:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (6, 4, '2015-01-15 11:00:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (6, 4, '2015-01-15 12:00:00');
INSERT INTO Record(IDPatient, IDDoctor, RecordingTime) VALUES (6, 4, '2015-01-15 14:00:00');