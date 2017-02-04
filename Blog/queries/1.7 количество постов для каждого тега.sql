select tag_name, count(title) from tags 
inner join binder on binder.tags_id=tags.id 
inner join posts on binder.posts_id=posts.id 
group by tag_name;