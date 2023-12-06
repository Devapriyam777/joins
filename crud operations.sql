
create table address.student1(
  id int primary key auto_increment,
  name varchar(45) not null,
  email varchar(40) not null,
  phone int check(length(phone)=10)
);

alter table address.student1 add column gender varchar(10);

alter table address.student1 modify gender varchar(5);

alter table address.student1 drop column email;


#alter table add constraint:
#add null constraint:
alter table address.student1 modify name varchar(50) null;

#add not null
alter table address.student1 modify name varchar(50)  not null;

#add unique constraint:
alter table address.student1 add constraint unique_id unique(id);

#drop unique constraint:
alter table address.student1  drop index unique_id;

#check constraint:
alter table address.student1 add constraint chk_name_4 check(length(name)>=4);

#drop check constraint:

alter table address.student1 drop check chk_name_4;

alter table address.useraddress modify userid int null;

create table address.useraddress(
  id int primary key auto_increment,
  street varchar(40) not null,
  location varchar(40) not null,
  city varchar(40) not null,
  state varchar(40) not null,
  country varchar(10) default('india'),
  userid int not null,
  constraint foreign key useraddress_user_userid(userid) references address.student1(id)
);

select * from address.useraddress

select * from address.student1



select * from address.student1 as stud join address.useraddress as useradd on stud.id = useradd.userid;

select * from address.student1 as stud left join address.useraddress as useradd on stud.id = useradd.userid;

select * from address.student1 as stud right join address.useraddress as useradd on stud.id = useradd.userid;
