set sql_safe_updates = 0; 
delete
from liedjes
where AantalVerkocht < 2000;

set sql_safe_updates = 1; 
