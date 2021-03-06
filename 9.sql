#1.	Напишіть команди Transact SQL для наступних дій:
#1.	Створити новий обліковий запис;
#2.	Назначити користувачу роль БД (будь-яку);
#3.	Надати користувачу Bill повноваження на доступ к збереженої процедури (будь-якої);
#4.	Відкликати всі надані користувачу John привілегії.
#2.	Поясніть призначення наступних команд Transact SQL:
#a)	GRANT SELECT, INSERT 
#ON SUPPLIES 
#TO J_Smith 
#WITH GRANT OPTION AS Economists
#b)	EXEC[UTE] sp_addlogin ‘king_of_the_db', 
#‘a2h7d0f7dg84mdf94', 
#‘PROJECTS', 
#‘Ukrainian', 
#‘master', 
#‘NULL'
#c)	REVOKE ALL TO ‘M_Ivanenko' 
#CASCADE
#3.	Зашифруйте зміст однієї з  колонок таблиці в створеній БД.
GRANT ALL ON hospital.* TO 'alex'@'local'IDENTIFIED BY 'qwerty';

CREATE USER 'alexey'@'local' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON * . * TO 'alexey'@'local';

GRANT ALL ON hospital.hello TO 'bill'@'local' identified by 'qwerty';
use mysql;
select * from user;
show grants for 'bill'@'local';

select user();
use hospital;
UPDATE Messeges SET Messege=AES_ENCRYPT('Messege','key');

use hospital;


select * from Doctor into outfile 'doctorback_up1.sql' FIELDS TERMINATED BY ',';
load data infile 'doctorback_up1.sql' into table hospital.Doctor FIELDS TERMINATED BY ',';
