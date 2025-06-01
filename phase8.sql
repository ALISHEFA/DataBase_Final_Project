CREATE ASSERTION data_consistancy CHECK(
not exists(select *from product p1,product p2 
where p1.brand_id != p2.brand_id and p1.ID = p2.ID
)
);
 

