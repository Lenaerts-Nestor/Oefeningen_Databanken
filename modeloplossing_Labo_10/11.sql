SELECT Albums.Titel, max(Duurtijd) FROM ApDB.LiedjeOpAlbum
inner join Albums
on Albums.Id = Albums_Id
inner join Liedjes
on Liedjes.Id = Liedjes_Id
group by Albums.Id;