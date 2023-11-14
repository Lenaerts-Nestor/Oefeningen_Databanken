select
	truncate(ReleaseJaar, -1) as 'Decennium',
    Count(Titel) as 'Aantal_nummers'
from
	Liedjes
Where 
	truncate(ReleaseJaar, -1) > 450
group by `Decennium`

