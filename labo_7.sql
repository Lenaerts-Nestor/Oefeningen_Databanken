#24
drop table if exists Artiesten;
create table Artiesten(
Id int primary key auto_increment,
Naam varchar(100) not null
);

#25
insert into Artiesten(Naam)
(select distinct Artiest from Nummers);

#26
alter table Nummers 
add column Id_Artiesten int,
add constraint FK_Nummers_Artiesten foreign key(Id_Artiesten) references Artiesten(Id);

#27

set sql_safe_updates = 0;
update Nummers inner join Artiesten
on Artiesten.Naam = Nummers.Artiest
set Nummers.Id_Artiesten = Artiesten.Id;
set sql_safe_updates = 1;

#28
set sql_safe_updates = 0;
alter table Nummers
drop Artiest;

alter table Nummers
change Id_Artiesten Id_Artiesten int not null;
set sql_safe_updates = 1;

#