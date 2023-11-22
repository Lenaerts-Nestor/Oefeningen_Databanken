
use aptunes ;
drop procedure if exists `NumberOfGenres`;

delimiter $$ 
create procedure `NumberOfGenres` (INOUT result INT)
begin
	select
		count(Naam) 
        INTO result
	from 
		genres;
End $$

delimiter ;
	
call NumberOfGenres(@aantal);
select @aantal;