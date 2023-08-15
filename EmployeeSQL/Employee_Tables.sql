-- create tables with keys
create table titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	primary key (title_id)
);

create table employees(
	emp_no int NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

create table departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	primary key (dept_no)
);

create table dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no int NOT NULL,
	primary key (dept_no, emp_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

create table dept_emp(
	emp_no int NOT NULL,
	dept_no VARCHAR NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table salaries(
	emp_no int NOT NULL,
	salary int NOT NULL,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
);
