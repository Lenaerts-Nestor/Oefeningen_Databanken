select
Titel, 
Artiest,
AantalVerkocht
from
liedjes
where AantalVerkocht > 5000
order by AantalVerkocht desc