Create database DataJob2;

use DataJob2;

create table job(
job_id int not null,
Job_Title varchar(200),
Job_Description TEXT(25000),
JobCategory varchar(100),
Rating float,
Salary_Min_Estimate	int,
Salary_Max_Estimate int,
Constraint Pk_JOB Primary Key (job_id)
);

create table company(
company_id Int not null,
Company_Name varchar(200),
Founded int,
Type_of_ownership varchar(200),
Size_employee float,
Industry varchar(100),
Sector varchar(100),
Constraint Pk_Company Primary Key (company_id)
);

create table location(
location_id Int not null,
City varchar(100),
State varchar(100),
Constraint Pk_location Primary Key (location_id)
);

create table measurement(
location_id int not null,
company_id int not null,
job_id int not null,
Constraint Pk_measurement Primary Key (location_id,company_id,job_id),
Constraint Fk_j foreign key (job_id) references job(job_id),
Constraint Fk_c foreign key (company_id) references company(company_id),
Constraint Fk_l foreign key (location_id) references location(location_id)
);


