select id, name from users
inner join followers on followers.user_id = users.id
group by id;