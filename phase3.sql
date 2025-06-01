
--brands
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values ('01','10','clay','1402/3/4','101','norion');
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values ('02','20','nike','1402/3/4','202','proton');
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values  ('03','30','meta','1402/3/4','303','electron');
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values  ('04','20','lala','1402/3/4','202','proton');
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values  ('05','40','like','1402/3/4','404','oxijen');
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values  ('06','50','taki','1402/3/4','505','hydrojen');
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values  ('07','60','piano','1402/3/4','606','boron');
insert into brand (ID,comp_id,Name,EstDate,comp_license,comp_name) values  ('08','60','killy','1402/3/4','606','boron');
--done 
--componies
insert into  compony (comp_id,license_number,name,estDate,storeAddress) values ('10','101','norion','1402/3/4','waliAsr-e-tehran');

insert into  compony (comp_id,license_number,name,estDate,storeAddress) values ('20','202','proton','1402/3/3','ferdowsi-e-tehran');

insert into  compony (comp_id,license_number,name,estDate,storeAddress) values ('30','303','electron','1402/3/2','kabul-afghanistan');

insert into compony (comp_id,license_number,name,estDate,storeAddress) values ('40','404','oxijen','1402/3/1','shiraz-Iran');

insert into  compony (comp_id,license_number,name,estDate,storeAddress) values ('50','505','hydrojen','1402/2/30','gilan-iran');

insert into  compony (comp_id,license_number,name,estDate,storeAddress) values ('60','606','boron','1402/2/29','herat-Afghanistan');
--done



--products
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('0','apple','20kg','01','10','clay');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('1','orange','10kg','03','30','meta');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('2','banana','15kg','04','20','lala');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('3','tea','5kg','02','20','nike');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('4','water','20kg','06','50','taki');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('5','phone','4kg','07','60','piano');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('6','pen','3kg','08','60','killy');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('7','pencil','4kg','08','60','killy');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('8','paper','10kg','08','60','killy');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('9','disk','100kg','04','20','lala');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('10','AC','30kg','03','30','meta');
insert into product (ID,Name,weight,brand_id,comp_id,brand_name) values('11','glass','40kg','06','50','taki');
--done 


--customer
insert into customer(NationalID,Name,familyName,street,city,province) values('1001','ali','karimi','hafez','tehran','tehran');
insert into customer(NationalID,Name,familyName,street,city,province) values('2002','ahmad','rahimi','hayat','karaj','tehran');
insert into customer(NationalID,Name,familyName,street,city,province) values('3003','nabi','azimi','lala','tehran','tehran');
insert into customer(NationalID,Name,familyName,street,city,province) values('4004','zabih','sabori','krike','shiraz','shiraz');
insert into customer(NationalID,Name,familyName,street,city,province) values('5005','rahim','rahmati','nilofer','mashhad','mashhad');
--done 


--distributers
insert into distributer(ID,Name,address,working_hours) values('100','joam','herat-Afghanistan','8');
insert into distributer(ID,Name,address,working_hours) values('200','barat','kabul-Afghanistan','7');
insert into distributer(ID,Name,address,working_hours) values('300','misbah','tehran-Iran','9');
insert into distributer(ID,Name,address,working_hours) values('400','aziz','balkh-Afghanistan','7');
--done 


--customers_order
insert into customer_order (order_id,costomer_id) values('20','1001');
insert into customer_order (order_id,costomer_id) values('21','2002');
insert into customer_order (order_id,costomer_id) values('22','4004');
--done

--orders
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('20','0','100','1001',4);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('21','2','200','2002',6);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('22','3','400','4004',8);

insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('23','5','100','1001',5);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('24','6','200','2002',7);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('25','2','400','4004',9);

insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('26','7','100','1001',2);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('27','8','200','2002',3);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('28','9','400','4004',18);

insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('29','10','100','1001',32);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('30','2','200','2002',61);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('31','11','400','4004',5);

insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('32','1','100','1001',6);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('33','0','200','2002',7);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('34','3','400','4004',8);

insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('35','6','100','1001',9);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('36','5','200','2002',11);
insert into the_order(order_id,product_id,dist_id,customer_id,quntity) values ('37','4','400','4004',23);
--done














