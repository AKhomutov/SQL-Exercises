select  name from users where id not in (select users_id from posts);