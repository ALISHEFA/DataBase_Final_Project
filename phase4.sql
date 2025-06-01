insert into customer(NationalID,Name,familyName,street,city,province,phoneNumber) values('‫‪12345','Harry','kean','‫‪Street‬‬‫‪Baker‬‬ ‫‪212‬‬','‫‪London‬‬','‫‪London‬‬','‫‪+448462‬‬');


UPDATE customer 
SET phoneNumber = '‫‪4473427 ‫‪+‬‬'
WHERE phoneNumber = '+448462';


delete from customer 
where NationalID not in (select NationalID from customer inner join customer_order on customer.NationalID = customer_order.costomer_id);
