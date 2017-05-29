CREATE TABLE STUDENT(
sid integer primary key,
firstname varchar(20),
lastname varchar(20),
age integer,
gender varchar(10));

CREATE TABLE COURSE(
cid integer auto_increment primary key,
cNumber varchar(20),
cName varchar(200),
quarter varchar(20));

create table enrolled(
studentid integer,
courseid integer,
primary key(studentid,courseid),
foreign key(studentid) references student(sid),
foreign key(courseid) references course(cid));


Insert into STUDENT(firstname,lastname,age,gender) values("Aastha","Jain",25,"Female");
Insert into STUDENT(firstname,lastname,age,gender) values("Jacquenline","Fernandez",20,"Female");
Insert into STUDENT(firstname,lastname,age,gender) values("Mangesh","Adalinge",21,"Male");
Insert into STUDENT(firstname,lastname,age,gender) values("Manav","Bhanot",20,"Male");
Insert into STUDENT(firstname,lastname,age,gender) values("Habiba","Abdalla",20,"Female");

Insert into course(cNumber,cName,quarter) values("CS142"  ,"Web stuff","Spring 2016");
Insert into course(cNumber,cName,quarter) values("ART101 "  ,"Java Course","Fall 2016");
Insert into course(cNumber,cName,quarter) values("CS148"  ,"Application Programming","Spring 2016");
Insert into course(cNumber,cName,quarter) values("CS150"  ,"Fault Tolerant","Summer 2016");
Insert into course(cNumber,cName,quarter) values("CS121"  ,"Simulation Modeling","Spring 2016");

select * from student;
select * from course;
select * from enrolled;
select * from student where firstname='Aastha';


select c.cid,c.cNumber,c.cName,c.quarter 
from student s, enrolled e, course c
where e.studentid = s.sid and e.courseid = c.cid and s.sid=4;

delete from enrolled where studentid=4 ;
delete from student where sid=4;

Insert into enrolled(studentid,courseid) values(1,1);
Insert into enrolled(studentid,courseid) values(1,2);
Insert into enrolled(studentid,courseid) values(1,3);
Insert into enrolled(studentid,courseid) values(1,4);
Insert into enrolled(studentid,courseid) values(1,5);
Insert into enrolled(studentid,courseid) values(2,1);
Insert into enrolled(studentid,courseid) values(2,2);
Insert into enrolled(studentid,courseid) values(2,3);
Insert into enrolled(studentid,courseid) values(2,4);
Insert into enrolled(studentid,courseid) values(3,3);
Insert into enrolled(studentid,courseid) values(3,4);
Insert into enrolled(studentid,courseid) values(4,4);
Insert into enrolled(studentid,courseid) values(4,5);