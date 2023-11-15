select Gebruikersnaam, Liedjes.Titel
from Gebruikers
inner join GebruikerHeeftLiedje
on Gebruikers.Id = GebruikerHeeftLiedje.Gebruikers_Id
inner join Liedjes
on Liedjes.Id = Nummers_Id
where Favoriet;