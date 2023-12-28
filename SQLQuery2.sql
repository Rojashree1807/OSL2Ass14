create database CourseManagement
use CourseManagement
CREATE TABLE Category (
    Id INT PRIMARY KEY,
    CourseCategory NVARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE Course (
    Id INT PRIMARY KEY,
    Name NVARCHAR(50),
    Fee FLOAT,
    StartDate DATETIME,
    CategoryId INT,
    FOREIGN KEY (CategoryId) REFERENCES Category(Id)
);

insert into Category values(1,'B.E.')
insert into Category values(2,'B.TECH')
insert into Category values(3,'B.Sc')


insert into Course values (1,'Java',20000,'12/12/2023',1)
insert into Course values (2,'Satistics',10000,'08/11/2021',3)
insert into Course values (3,'MachineLearning',15000,'11/05/2022',2)
insert into Course values (4,'FullStack',12000,'04/05/2023',1)


select * from Category
select * from Course