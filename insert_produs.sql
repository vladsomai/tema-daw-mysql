drop procedure if exists insertProdus;
delimiter //
CREATE procedure insertProdus(PRODUS_Param varchar(30), PRET_BUC_Param INT, BUCATI_Param int)
BEGIN

#calculam pretul total bazat pe numarul de bucati inserat
DECLARE pret_total_calculat INT DEFAULT 0;

#ne asiguram ca produsul sa nu poata fi inserat de mai mult de 2 ori
if ((select count(PRODUS) from produse where produs = Produs_Param)>=2  AND
    (select count(PRET_BUC) from produse where PRET_BUC = PRET_BUC_Param)>=2) then
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Produs already exists 2 times', MYSQL_ERRNO = 1002;
else
  set pret_total_calculat = PRET_BUC_Param * BUCATI_Param;
  insert into produse (PRODUS, PRET_BUC, BUCATI, PRET_TOTAL) values
  (
  PRODUS_Param,
  PRET_BUC_Param,
  BUCATI_Param,
  pret_total_calculat) ;

end if;
END;
//
delimiter ;


call insertProdus("Fujitsu",3000,1);
call insertProdus("Lenovo",4000,1);
call insertProdus("Acer",5000,1);
call insertProdus("Apple",7000,1);
