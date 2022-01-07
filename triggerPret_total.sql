drop trigger updatePretTotal;
delimiter |
 CREATE 
    TRIGGER  updatePretTotal
 AFTER INSERT ON produse FOR EACH ROW 
    UPDATE produse SET PRET_TOTAL = BUCATI * PRET_BUC;
|
delimiter ;