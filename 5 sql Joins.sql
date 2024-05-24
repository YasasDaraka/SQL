create DATABASE if not EXISTS sql_joins;
use sql_joins;

=============

create table coustomer (
		ID VARCHAR(45) PRIMARY KEY,
		name VARCHAR(45)
		);
		
desc coustomer;
insert into coustomer values('c-1' , 'nimal'),('c-2', 'bandara'),('c-3', 'jayarathna'),('c-4','saman'),('c-5','wasantha');
select*from coustomer;

==============

create table Orders (
		order_ID VARCHAR(45) PRIMARY KEY,
		date date,
		CID VARCHAR(45)
		);

insert into Orders values 	('O-1',now(),'c-1'),('O-2',now(),'c-3'),
							('O-3',now(),'c-6'),('O-4',now(),'c-3'),
							('O-5',now(),'c-8'),('O-6',now(),'c-9'),
							('O-7',now(),'c-3'),('O-8',now(),'c-2'),
							('O-9',now(),'c-7'),('O-10',now(),'c-1');

select * from orders;

============inner join====================

select*
from coustomer 
inner join orders 
on coustomer.ID = orders.CID;

select*
from coustomer c 
inner join orders o 
on c.ID = o.CID;

============left join====================

select*
from coustomer c 
left join orders o 
on c.ID = o.CID;

============right join====================

select*
from coustomer c 
right join orders o 
on c.ID = o.CID;

============full outrer join====================

select*from coustomer c left join orders o on c.ID = o.CID
UNION
select*from coustomer c right join orders o on c.ID = o.CID;

//
select*    
from coustomer c 
full join orders o  <<<<< wada naa
on c.ID = o.CID;
//