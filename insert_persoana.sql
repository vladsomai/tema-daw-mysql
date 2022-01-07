drop procedure if exists insertPersoana;
delimiter //
CREATE procedure insertPersoana(Nume_Param varchar(30), Varsta_Param INT)
BEGIN
  insert into persoane (Nume, Varsta) values
  (
  Nume_Param,
  Varsta_Param) ;
END;
//
delimiter ;


call insertPersoana("Vlad Somai",25);
call insertPersoana("Ion Popescu",35);
call insertPersoana("Alexandru Rafila",61);
call insertPersoana("Gheorge Hagi",55);

call insertPersoana("Alexandru Macedon",25);
call insertPersoana("Andrei Marin",35);
call insertPersoana("Ion Tiriac",61);
call insertPersoana("Gheorghe Popescu",55);