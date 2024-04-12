create database School


use School

create table Students(
	[Id] int primary key identity(1,1),
	[FullName] nvarchar(100),
	[Email] nvarchar(100)
)

insert into Students([FullName],[Email])
values('Nurlan Musayev','nurm@mail.ru'),
	  ('Narmin Mammadli','narm@mail.ru'),
	  ('Gunel Veliyeva','gunv@mail.ru')



 --@ isaresinden sonraki simvollar
SELECT *, RIGHT(Email, LEN(Email) - CHARINDEX('@', Email)) AS 'After @' FROM Students;


 --@ isaresinden evvelki simvollar
select *, left(Email, charindex('@', Email) - 1) as 'before @' from Students