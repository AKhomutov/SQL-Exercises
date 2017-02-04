select id, name from users 
where id not in (select user_id from posts);