select posts.id, title, text
from posts
inner join
(select posts_id from binder group by posts_id having count(*) > 1) 
binder on binder.posts_id=posts.id
order by id;