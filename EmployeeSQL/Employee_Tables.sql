create table departments(
	dept_no int primary key,
	dept_name VARCHAR
);

create table dept_emp(
	emp_no int primary key,
	dept_no int
);

create table dept_manager(
	dept_no int primary key,
	emp_no int
);

create table employees(
	emp_no int primary key,
	emp_title_id VARCHAR