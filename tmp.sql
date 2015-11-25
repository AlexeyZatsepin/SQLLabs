create table hospital.diagnoses_for_patients_tmp(
	Title_diagnosis VARCHAR(30) NOT NULL UNIQUE,
    FIOPatient VARCHAR(30) NOT NULL
    
);
use hospital;


drop trigger before_insert_new_diagnos_for_patient;