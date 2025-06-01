select d.Name,p.Name,sum(th.quntity)as quntities from distributer d inner join the_order th on d.ID = th.dist_id,product p where th.product_id = p.ID
group by d.name,p.name 
order by quntities desc;



select c.city, p.name,sum(th.quntity) as quntities from customer c inner join the_order th on c.NationalID = th.customer_id,product p where th.product_id = p.ID
group by c.city,p.name
order by quntities desc;


select d.Name, sum(th.quntity) as quntities from distributer d inner join the_order th on d.ID = th.dist_id
group by d.name 
order by quntities desc
limit 5;


select count(d.name) as num from distributer d inner join the_order th on d.ID = th.dist_id
where d.name in (select ds.name from distributer ds inner join the_order the on ds.ID = the.dist_id
);
--all done 


select p.name ,sum(quntity) as quntities from product p inner join the_order th on p.ID = th.product_id 
where p.name = 'orange' and (p.name,quntities) in (select p.name ,sum(quntity) as quntitiese from product p inner join the_order th on p.ID = th.product_id 
group by p.name 
order by quntitiese desc 
limit 3);
---not done



