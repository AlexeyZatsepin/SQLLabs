Select FIODoctor,Title_spec,Title_position 
FROM Doctor,Specializations,Positions 
Where Specializations.IDSpec=Doctor.IDSpec AND Doctor.IDPosition=Positions.IDPosition
