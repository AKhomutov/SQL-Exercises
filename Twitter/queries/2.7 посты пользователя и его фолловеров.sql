select posts.id as 'post id', posts.text, posts.date_time, users.id as 'user and followers ids', users.name 'user and followers names' from posts
inner join users on users.id = posts.user_id
where users.id = 1
union
select posts.id as 'post id', posts.text, posts.date_time, users.id as 'user and followers ids', users.name 'user and followers names' from posts
inner join users on users.id = posts.user_id
inner join followers on followers.follower_id = users.id
where followers.user_id = 1
order by date_time desc;