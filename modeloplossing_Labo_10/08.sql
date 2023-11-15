select Gebruikersnaam, Albums.Titel
from Gebruikers
inner join GebruikerHeeftAlbum
on Gebruikers.Id = GebruikerHeeftAlbum.Gebruikers_Id
inner join Albums
on Albums.Id = Albums_Id;