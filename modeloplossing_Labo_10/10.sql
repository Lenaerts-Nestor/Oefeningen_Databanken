select Artiesten.Naam, max(Royalties)
from Artiesten
inner join Liedjes
on Liedjes.Artiesten_Id = Artiesten.Id
group by Artiesten.Id;