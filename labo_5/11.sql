select
Album
from Liedjes
group by  Album
having sum(Royalties) > 300 and group_concat(Genre) like '%rock%'
order by Album desc;