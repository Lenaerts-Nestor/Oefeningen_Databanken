select Gebruikersnaam, count(*)
from Gebruikers
inner join GebruikerHeeftAlbum
on Gebruikers.Id = GebruikerHeeftAlbum.Gebruikers_Id
group by Gebruikersnaam;