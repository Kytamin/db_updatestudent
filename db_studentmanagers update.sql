create database StudentManagers;
create table Class(
classID int auto_increment primary key,
className varchar(30) not null,
startDate Date not null,
status bit 
);
create table Student(
studentID int auto_increment primary key,
studentName varchar(30) not null,
address varchar(30) not null,
phone varchar(30),
status bit,
classID int,
foreign key(classID) references Class(classID)
);
create table Supject(
subID int auto_increment primary key,
subName varchar(30) not null,
credit int not null,
status bit
);
create table Mark(
markID int auto_increment primary key,
subID int,
foreign key(subID) references Supject(subID),
studentID int,
foreign key(studentID) references Student(studentID),
mark int,
examTime int
);
insert into Class(className,startDate,status) values('A1','2008/12/20',1);
insert into Class(className,startDate,status) values('A2','2008/12/22',1);
insert into Class(className,startDate,status) values('A3',current_date(),1);
insert into Student(studentName,address,phone,status,classID) values('Hung','Ha noi','0912113113',1,2);
insert into Student(studentName,address,phone,status,classID) values('Hoa','Hai phong','',1,2);
insert into Student(studentName,address,phone,status,classID) values('Manh','HCM','0123123123',0,3);
insert into  Supject(subName,credit,status) values('CF',5,1);
insert into  Supject(subName,credit,status) values('C',6,1);
insert into  Supject(subName,credit,status) values('HDJ',5,1);
insert into  Supject(subName,credit,status) values('RDBMS',10,1);
insert into Mark(subID,studentID,mark,examTime) values(1,2,8,1);
insert into Mark(subID,studentID,mark,examTime) values(1,3,10,2);	
insert into Mark(subID,studentID,mark,examTime) values(2,4,12,1);

