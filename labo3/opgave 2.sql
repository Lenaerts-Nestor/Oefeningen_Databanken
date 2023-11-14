set sql_safe_updates = 0; 
update geboorteInfo
set geboorteInfo.GewichtInkKilogram = 2.8
where geboorteInfo.Voornaam = "Thijs" and geboorteInfo.Familienaam = "Verbeeck";

set sql_safe_updates = 1; 
