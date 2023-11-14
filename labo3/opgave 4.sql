set sql_safe_updates = 0; 

update geboorteInfo
set geboorteInfo.Familienaam =  concat( substring(geboorteInfo.Familienaam, 1 , 1), '.');

set sql_safe_updates = 1; 

