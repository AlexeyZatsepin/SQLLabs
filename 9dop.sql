#DELIMITER $$
#CREATE TRIGGER users_bi BEFORE INSERT ON users FOR EACH ROW 
#    BEGIN
#        SET NEW.password = SHA(NEW.password);
#    END;
#$$
#DELIMITER ;
