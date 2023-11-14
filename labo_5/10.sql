select
	Artiest  
from 
	Liedjes
where Duurtijd >= 480  AND Genre = 'Klassiek'
group by Artiest,Genre
order by Artiest


