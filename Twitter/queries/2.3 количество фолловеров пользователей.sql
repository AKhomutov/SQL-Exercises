select id, name, count(user_id) as 'number of followers' from users
inner join followers on followers.user_id = users.id
group by id;