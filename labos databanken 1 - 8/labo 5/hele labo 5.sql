-- oef 1 [01]
select count(*) from Liedjes;

-- oef 2 [02]
select sum(Royalties)
from Liedjes
where Artiest = 'Led Zeppelin';

-- oef 3 [03]
select count(*)
from Liedjes
where ReleaseJaar < 1990;

-- oef 4 [04]
select count(*) as 'Aantal nummers'
from Liedjes
group by ReleaseJaar < 1990;

-- oef 5 [05]

select count(*) as 'Aantal', Genre
from Liedjes
group by Genre
order by count(*);

-- oef 6 [06 ]

select Artiest
from Liedjes
group by Artiest;

-- oef 7 [07]
select count(distinct Artiest) from Liedjes;

-- oef 8 [08]

-- hier mag je gewone quotes gebruiken
select Genre, avg(Duurtijd) as 'Gemiddelde duurtijd'
from Liedjes
group by Genre
-- op deze manier vermijd je 'Gemiddelde duurtijd' met spatie...
having avg(Duurtijd) >= 5 * 60
-- maar met backticks kan je ook spaties gebruiken in een alternatieve benaming in expressiecontext
order by `Gemiddelde duurtijd`;

-- oef 9 [09]

select truncate(ReleaseJaar,-1) as 'Decennium', count(*) as 'Aantal nummers'
from Liedjes
group by Decennium
having count(*) >= 450
order by Decennium;

-- oef 10 [10]

select Artiest
from Liedjes
group by Artiest, Genre
having avg(Duurtijd) >= 8 * 60 and Genre = 'Klassiek'
order by Artiest;


-- oef 11 [11]

select Album
from Liedjes
group by Album
having sum(Royalties) > 300 and group_concat(Genre) like '%rock%'
order by Album desc;

-- oef 12 [12]

select Genre, max(Royalties) as 'Hoogste royalties' from Liedjes
where Royalties is not null
group by Genre
having avg(Duurtijd) >= 4 * 60
order by max(Royalties);







