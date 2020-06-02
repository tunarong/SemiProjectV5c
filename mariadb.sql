-- member
create table Members (

  mno     int primary key auto_increment,
  name    varchar(15) not null,
  jumin   varchar(18) not null,

  userid  varchar(18) not null,
  passwd  varchar(18) not null,

  zipcode varchar(7) not null,
  addr1   varchar(50) not null,
  addr2   varchar(50) not null,
  email   varchar(50) not null,
  mobile  varchar(13) not null,
  regdate datetime default CURRENT_TIMESTAMP
);



-- board
create table Board(

  bno      int primary key auto_increment,
  title    varchar(50) not null,
  userid   varchar(18) not null,
  regdate  datetime DEFAULT CURRENT_TIMESTAMP,
  thumbup  int DEFAULT 0,
  views    int DEFAULT 0,
  contents mediumtext not null

);

-- pds
create table pds(

  pno      int primary key auto_increment,
  title    varchar(50) not null,
  userid   varchar(18) not null,
  regdate  datetime DEFAULT CURRENT_TIMESTAMP,
  thumbup  int DEFAULT 0,
  views    int DEFAULT 0,
  contents mediumtext not null,
  fname    varchar(50),
  fsize    int DEFAULT 0,
  fdown    int DEFAULT 0,
  ftype    varchar(10)
);

-- gallery
create table gallery(

  gno      int primary key auto_increment,
  title    varchar(50) not null,
  userid   varchar(18) not null,
  regdate  datetime DEFAULT CURRENT_TIMESTAMP,
  thumbup  int DEFAULT 0,
  views    int DEFAULT 0,
  contents mediumtext not null,
  fname1    varchar(50),
  fname2    varchar(50),
  fname3    varchar(50)

);

-- zipcode : 지번주소 (2013.02기준 총 52144건)
create table zipcode (
  zipcode varchar(7),
  sido varchar(10),
  gugun varchar(25),
  dong varchar(35),
  li varchar(50),
  bunji varchar(25),
  seq varchar(5)
);

select * from zipcode where dong like '이도일동';

-- 아이디 중복 체크
select count(mno) from Members where userid = 'arong2';