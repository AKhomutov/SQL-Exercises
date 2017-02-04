select users.id, name, count(tags_id) from users
inner join posts on users.id = posts.user_id
inner join binder on posts.id = binder.posts_id
group by users.id
order by count(tags_id) desc limit 5;