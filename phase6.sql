create view ‫‪distributor_distributes‬‬ as select *from distributer left outer join the_order on distributer.ID = the_order.dist_id;



create view ‫‪customer_orders‬‬ as select *from customer inner join the_order on customer.NationalID = the_order.customer_id;


create view ‫‪product_type_brand_company‬‬ as select p.id,p.Name,p.brand_id,p.brand_name,p.type_id,p.type_name,p.weight,b.comp_id,b.comp_name,b.comp_license,b.EstDate as brandEstDate, c.estDate as comp_Estdate from product p inner join brand b on p.brand_id = b.ID join compony c on p.comp_id = c.comp_ID left outer join type t on t.type_id = p.type_id; 
