select id, text, date_time as 'date and time posted' from comments 
where date_time between '2017-02-04 13:00:00' and'2017-02-04 23:00:00';
-- could be done as following: "where comments.date_time > date_sub(curdate(), interval 10 hour)"