alter table positions drop index title_position;
INSERT INTO Positions(Title_position) VALUES('nurse');
alter table positions add unique index (title_position);

DELETE from positions USING Positions, Positions as pos
WHERE (Positions.Title_position=pos.Title_position) 
AND (Positions.IDPosition>pos.IDPosition);

Rename table positions to tmp_pos;
Rename table tmp_pos to positions;

#CREATE TABLE Positions(
#	 IDPosition INT PRIMARY KEY auto_increment,
#	 Title_position VARCHAR(30) NOT NULL unique
#);
#insert into positions select distinct * from tmp_pos;
#select distinct * from tmp_pos;
ALTER table positions add Single varchar(3) default 'tak';
ALTER table positions drop Single;

select * from positions;
drop database hospital;