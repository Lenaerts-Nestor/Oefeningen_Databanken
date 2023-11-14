use 2324_LENAERTSNESTOR;

drop table if exists Liedjes;
create table if not exists liedjes(
`Artiest`  varchar(100),
`Titel` varchar(100),
`AantalVerkocht` int unsigned,
`ReleaseJaar` datetime
);
drop table if exists geboorteInfo; 

create table if not exists geboorteInfo(
`Voornaam` varchar(100),
`Familienaam` varchar(100),
`TijdstipGeboorte` datetime,
`GewichtInkKilogram` float
);

drop table if exists huisdieren; 
create table if not exists huisdieren(
`Naam` varchar(100),
`Diersoort` varchar(100),
`Leeftijd` tinyint unsigned
);

