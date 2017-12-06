delete from tbl_todoitem;
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description1', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description2', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description3', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description4', false, CURRENT_TIMESTAMP(), 'robin');
insert into tbl_todoitem(id, desc, is_done, target_date, user)  values (null, 'Description5', false, CURRENT_TIMESTAMP(), 'robin');


delete from tbl_customer;
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Luke Chen', 'IT Manager', 'Chinasoft', '4', '550', 'overview');
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Sam Ma', 'Entrepreneur', 'Midea', '5', '600', 'overview');
insert into tbl_customer(id, name, job, company, rating, rating_score, detail)  values (null, 'Stan Yu', 'Singer', 'BeiJing ShiJia', '2', '350', 'overview');
