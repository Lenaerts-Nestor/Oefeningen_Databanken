SELECT Gebruikersnaam, Artiesten.Naam, count(*) FROM ApDB.GebruikerHeeftAlbum
inner join Gebruikers on Gebruikers.Id = Gebruikers_Id
inner join Albums on Albums_Id = Albums.Id
inner join Artiesten on Albums.Artiesten_Id = Artiesten.Id
group by Gebruikersnaam, Artiesten.Naam
order by count(*) desc;