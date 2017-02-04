select posts.id, posts.text, count(post_id) as 'number of comments' from posts
inner join comments on comments.post_id = posts.id
group by posts.id;