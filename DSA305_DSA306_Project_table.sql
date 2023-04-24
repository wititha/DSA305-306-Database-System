create table acc_type (
  acc_type_id         varchar2(10) not null ,
  acc_type_name  varchar2(30) not null unique,
  acc_min_amount number(10,0) not null check(acc_min_amount >=0),
  acc_interest_rate number(4,2) not null check(acc_interest_rate>=0),
  primary key (acc_type_id)
);

desc acc_type;

create table customer (
  cus_id  varchar2(10) not null ,
  acc_id  number(10,0) not null unique,
  cus_fname varchar2(20) not null,
  cus_lname varchar2(20) not null,
  cus_dob date,
  cus_address varchar2(50) not null,
  cus_zipcode number(5,0) not null,
  cus_email varchar2(30),
  cus_phone number(10,0),
  primary key (cus_id),
  foreign key(acc_id) references accounts(acc_id)
);

create table accounts (
  acc_id             number(10,0) not null ,
  acc_type_id    varchar2(10) not null,
  acc_balance  number(10,2) not null check(acc_balance>=0),
  prompt_id       number(15,0),
  primary key (acc_id),
   foreign key (acc_type_id) references acc_type(acc_type_id),
   foreign key (prompt_id)     references promptpay(prompt_id)
);


create table promptpay_type (
  prompt_type_id        varchar2(10) not null ,
  prompt_type_name varchar2(20) not null unique,
  prompt_type_desc  varchar2(150),
  primary key (prompt_type_id)
);

create table promptpay (
  prompt_id          number(15) not null ,
  acc_type_id      varchar2(10) not null check(acc_type_id in ( 'A001','A003')), --check
  id_type               varchar2(25) not null ,
  prompt_type_id varchar2(10) not null,
  primary key (prompt_id),
  foreign key (acc_type_id) references acc_type(acc_type_id),
  foreign key (prompt_type_id) references promptpay_type(prompt_type_id)
);

create table card_type (
  card_type_id        varchar2(10) not null ,
  card_type_name varchar2(40) not null unique,
  card_desc            varchar2(100),
  card_fee               varchar2(30)  not null ,
  primary key (card_type_id)
);

create table services (
  serv_id        varchar2(10) not null ,
  serv_name varchar2(30) not null unique ,
  serv_fee     varchar2(10) not null,
 primary key (serv_id)
);

create table card (
  card_id          number(16,0) not null ,
  acc_id           number(10,0) not null ,
  card_type_id varchar2(10) not null,
  primary key (card_id),
  foreign key (acc_id) references accounts(acc_id),
  foreign key (card_type_id) references card_type(card_type_id)
);


create table channel (
  channel_id        varchar2(10) not null ,
  channel_name varchar2(20) not null unique ,
  channel_desc  varchar2(150),
  primary key (channel_id)
);

create table transactions (
  trans_id  varchar2(15) not null ,
  acc_id number(10,0) not null,
  trans_datetime timestamp(2) not null,
  serv_id  varchar2(10) not null,
  trans_amount number(10,2) not null check(trans_amount>0),
  channel_id varchar2(10) not null,
  primary key (trans_id),
  foreign key (channel_id) references channel(channel_id),
  foreign key (acc_id) references accounts(acc_id),
  foreign key (serv_id ) references services(serv_id)
);

create table user_login (
  user_id number(10,0) not null ,
  user_password char(6) not null,
  primary key (user_id)
);

