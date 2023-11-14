#5
select 
	count(*) as 'Aantal',
    Genre
from
	Liedjes
group by 
	Genre
Order by 1;

#6
Select 
	distinct Artiets
from liedjes

