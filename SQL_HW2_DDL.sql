create table employees(
	id serial primary key,
	employee_name varchar(50) not null);

select * from employees;

insert into employees(employee_name)
values (default, 'Rick Williams'),
		(default, 'Robert Perry'),
		(default, 'Anthony White'),
		(default, 'David Turner'),
		(default, 'Bruce Gutierrez'),
		(default, 'Eric King'),
		(default, 'Gilbert Bryant'),
		(default, 'Jeffrey Scott'),
		(default, 'James Davis'),
		(default, 'Brian Smith'),
		(default, 'Zachary Meyer'),
		(default, 'Jason Phillips'),
		(default, 'Chester Edwards'),
		(default, 'Norman Craig'),
		(default, 'Mark Gonzales'),
		(default, 'Leo Holland'),
		(default, 'Robert Turner'),
		(default, 'Eugene Lopez'),
		(default, 'Kevin Gibbs'),
		(default, 'William Johnson'),
		(default, 'Rick Smith'),
		(default, 'Daniel Jones'),
		(default, 'Steven Howard'),
		(default, 'John Walsh'),
		(default, 'Jon Francis'),
		(default, 'Brandon French'),
		(default, 'Ronnie Elliott'),
		(default, 'Raymond Gilbert'),
		(default, 'Billy Nelson'),
		(default, 'James Dawson'),
		(default, 'Peter Clark'),
		(default, 'Lee Barrett'),
		(default, 'Alfredo Bell'),
		(default, 'Steven Malone'),
		(default, 'Jose Russell'),
		(default, 'Douglas Johnson'),
		(default, 'Gerald Barnes'),
		(default, 'Leroy Watts'),
		(default, 'Dennis Simpson'),
		(default, 'Kevin Phillips'),
		(default, 'Andrew Cox'),
		(default, 'Herbert Carter'),
		(default, 'Larry Warner'),
		(default, 'Joseph Jones'),
		(default, 'Pedro Johnson'),
		(default, 'Edward Herrera'),
		(default, 'Richard Stewart'),
		(default, 'James Ball'),
		(default, 'John Gross'),
		(default, 'Peter Thompson'),
		(default, 'Gerald Willis'),
		(default, 'Sergio Moore'),
		(default, 'Michael Swanson'),
		(default, 'David Freeman'),
		(default, 'Bernard Hicks'),
		(default, 'Robert Mitchell'),
		(default, 'Michael Smith'),
		(default, 'Henry Rivera'),
		(default, 'Lawrence Allen'),
		(default, 'Tyrone Holmes'),
		(default, 'George Rodriguez'),
		(default, 'James Lawrence'),
		(default, 'Edwin Thompson'),
		(default, 'John Stevens'),
		(default, 'David Hayes'),
		(default, 'Benjamin Lee'),
		(default, 'Eric Miller'),
		(default, 'Joseph Ward'),
		(default, 'Bobby Garcia'),
		(default, 'Edward Martinez');

create table salary(
	id serial primary key,
	monthly_salary int not null);

insert into salary(monthly_salary)
values  (default, 1000),
		(default, 1100),
		(default, 1200),
		(default, 1300),
		(default, 1400),
		(default, 1500),
		(default, 1600),
		(default, 1700),
		(default, 1800),
		(default, 1900),
		(default, 2000),
		(default, 2100),
		(default, 2200),
		(default, 2300),
		(default, 2400),
		(default, 2500);
	
select * from salary;


create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

insert into employee_salary(employee_id, salary_id)
values  (default, 1, 2),
		(default, 2, 3),
		(default, 3, 4),
		(default, 4, 5),
		(default, 5, 6),
		(default, 6, 7),
		(default, 7, 8),
		(default, 8, 9),
		(default, 9, 1),
		(default, 10, 11),
		(default, 11, 12),
		(default, 12, 13),
		(default, 13, 14),
		(default, 14, 15),
		(default, 15, 6),
		(default, 16, 8),
		(default, 17, 4),
		(default, 18, 2),
		(default, 19, 7),
		(default, 20, 5),
		(default, 21, 1),
		(default, 22, 9),
		(default, 23, 12),
		(default, 24, 11),
		(default, 25, 13),
		(default, 26, 14),
		(default, 27, 15),
		(default, 28, 10),
		(default, 29, 4),
		(default, 30, 2),
		(default, 81, 6),
		(default, 82, 7),
		(default, 83, 1),
		(default, 84, 11),
		(default, 85, 13),
		(default, 86, 8),
		(default, 87, 12),
		(default, 88, 2),
		(default, 89, 15),
		(default, 90, 3);


create table roles (
	id serial primary key,
	role_name int not null unique);

select * from roles;

alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
values  (default, 'Junior Python developer'),
		(default, 'Middle Python developer'),
		(default, 'Senior Python developer'),
		(default, 'Junior Java developer'),
		(default, 'Middle Java developer'),
		(default, 'Senior Java developer'),
		(default, 'Junior JavaScript developer'),
		(default, 'Middle JavaScript developer'),
		(default, 'Senior JavaScript developer'),
		(default, 'Junior Manual QA engineer'),
		(default, 'Middle Manual QA engineer'),
		(default, 'Senior Manual QA engineer'),
		(default, 'Project Manager'),
		(default, 'Designer'),
		(default, 'HR'),
		(default, 'CEO'),
		(default, 'Sales manager'),
		(default, 'Junior Automation QA engineer'),
		(default, 'Middle Automation QA engineer'),
		(default, 'Senior Automation QA engineer');


create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
			references employees (id),
	foreign key (role_id)
			references roles (id)
);

select * from roles_employee;

insert into roles_employee(employee_id, role_id)
values 	(1, 7),
		(2, 2),
		(3, 6),
		(4, 4),
		(5, 5),
		(6, 9),
		(7, 14),
		(8, 3),
		(9, 7),
		(10, 12),
		(11, 13),
		(12, 18),
		(13, 11),
		(14, 17),
		(15, 12),
		(16, 4),
		(17, 3),
		(18, 6),
		(19, 4),
		(20, 5),
		(21, 11),
		(22, 3),
		(23, 6),
		(24, 1),
		(25, 14),
		(26, 7),
		(27, 2),
		(28, 13),
		(29, 9),
		(30, 5),
		(31, 11),
		(32, 9),
		(33, 6),
		(34, 14),
		(35, 5),
		(36, 2),
		(37, 2),
		(38, 6),
		(39, 14),
		(40, 11);


	