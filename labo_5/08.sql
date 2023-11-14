select
	Genre,
    AVG(Duurtijd) as 'Gemiddelde_Duurtijd'
from Liedjes
Where Duurtijd >= 300
group by Genre
order by 2 Desc