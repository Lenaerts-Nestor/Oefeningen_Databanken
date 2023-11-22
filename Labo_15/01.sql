delimiter $$
use aptunes $$
drop procedure `GetLiedjes`;
create procedure `GetLiedjes` (IN gewensteliedje varchar(50))
begin
	select
		Titel
	from 
		liedjes
	where Titel Like Concat('%', gewensteliedje, '%');
End $$

delimiter ;
	
call GetLiedjes('web');



/*
CREATE PROCEDURE `GetMuzikanten` ()
BEGIN
    SELECT 
        Voornaam,
        Familienaam,
        Geboortedatum
    FROM 
        Muzikanten
    ORDER BY 1,2,3; -- deze ; betekent niet dat de instructie mag uitgevoerd worden! ze is deel van de procedure
END*/