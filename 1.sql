drop database hospital;
create database hospital;
use hospital;

CREATE TABLE Diagnoses(
	 IDDiagnosis INT PRIMARY KEY auto_increment,
	 Title_diagnosis VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Patient(
     IDPatient INT PRIMARY KEY auto_increment,
	 FIOPatient VARCHAR(30) NOT NULL check(FIOPatient not like '%[^a-z]%'),
	 BirthdayPatient DATE NOT NULL check(BirthdayPatient < now()),
     IDDiagnosis int,
     CONSTRAINT RecordingDiagnosisForeign FOREIGN KEY (IDDiagnosis) REFERENCES Diagnoses(IDDiagnosis) 
     on delete cascade
);

CREATE TABLE Positions(
	 IDPosition INT PRIMARY KEY auto_increment,
	 Title_position VARCHAR(30) NOT NULL unique
);


     
CREATE TABLE Specializations(
	 IDSpec INT PRIMARY KEY auto_increment,
	 Title_spec VARCHAR(30) NOT NULL unique
);

 
CREATE TABLE Doctor(
	 IDDoctor INT PRIMARY KEY auto_increment,
	 FIODoctor VARCHAR(20) NOT NULL,
	 BirthdayDoctor DATE NOT NULL check(BirthdayDoctor < now()),
	 IDPosition INT,
     IDSpec int,
	 CONSTRAINT DoctorPositionsForeign FOREIGN KEY (IDPosition) REFERENCES Positions(IDPosition)
     ON DELETE CASCADE,
     CONSTRAINT DoctorSpecForeign FOREIGN KEY (IDSpec) REFERENCES Specializations(IDSpec)
     ON DELETE CASCADE
);


CREATE TABLE Record(
	 IDPatient INT,
	 IDDoctor INT,
	 RecordingTime DATETIME NOT NULL check(RecordingTime > now()),
     primary key(IDPatient,IDDoctor,RecordingTime),
	 CONSTRAINT RecordingPatientForeign FOREIGN KEY (IDPatient) REFERENCES Patient(IDPatient) on delete cascade,
	 CONSTRAINT RecordingDoctorForeign foreign key (IDDoctor) REFERENCES Doctor(IDDoctor) on delete cascade
);
