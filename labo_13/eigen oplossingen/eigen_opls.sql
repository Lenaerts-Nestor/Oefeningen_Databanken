# 1) 
drop view if exists AuteursBoeken;
create view AuteursBoeken
AS
SELECT	
	concat(personen.Voornaam,'', personen.Familienaam) as "Auteur",
    boeken.Titel
from
	publicaties
    inner join personen on personen_Id = personen.Id
    inner join boeken on boeken_Id = boeken.Id;

# 2) 

-- dit is het om het terug te zetten 
update auteursboeken
set Titel =  'Pet Sematary' 
where Titel = 'Pet Cemetery';
    
-- dit is wat de oefening vraagt ! 
update auteursboeken
set Titel = 'Pet Cemetery'
where Titel = 'Pet Sematary';


# 3) 

#script 3A
alter view auteursboeken
as 
SELECT	
	concat(personen.Voornaam,'', personen.Familienaam) as "Auteur",
    boeken.Titel,
    Boeken_Id as "Boeken_Id" 
from
	publicaties
    inner join personen on personen_Id = personen.Id
    inner join boeken on boeken_Id = boeken.Id;


#script 3B

drop view if exists GemiddeldeRating;
create view GemiddeldeRating
AS
SELECT
	Boeken_Id,
    CAST(Rating AS DECIMAL(5,4)) AS 'Rating'
from
	reviews;


#script 3C
drop view if exists viewAuteursBoekenRatings ;
create view viewAuteursBoekenRatings 
AS
SELECT
	auteursboeken.Auteur,
    auteursboeken.Titel,
    auteursboeken.Boeken_id,
    gemiddelderating.Rating
from auteursboeken
	inner join gemiddelderating on auteursboeken.Boeken_id = gemiddelderating.Boeken_Id;
    


# SCRIPT 4 
drop view if exists takenVerdeling;
create view TakenVerdeling
as 
select
	COALESCE (leden.voornaam, 'Taak niet toegewezen'),
    COALESCE (omschrijving, 'Taak niet toegewezen')
from taken
    left join leden on Leden_Id = leden.Id
union all
select
	COALESCE (leden.voornaam, 'Taak niet toegewezen'),
    COALESCE (omschrijving, 'Taak niet toegewezen')
from taken
    right join leden on Leden_Id = leden.Id
    
    
