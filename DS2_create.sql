CREATE TABLE loansanction.loan_sanction_staging (
	staging_id integer identity(1,1) not null,
    loan_id varchar(200),
    gender varchar(200),
    married varchar(200),
    dependents varchar(200),
    education varchar(200),
    self_employed varchar(200),
    applicantincome integer,
    coapplicantincome integer,
    loanamount integer,
    loan_amount_term integer,
    credit_history integer,
    property_area varchar(200),
    gender_id integer,
    marriage_id integer,
    education_id integer,
    self_employed_id integer,
    property_area_id integer,
	constraint pk_staging primary key(staging_ID)
);

CREATE TABLE loansanction.dim_gender
(
    gender_id integer identity(1,1) not null,
    gender varchar(200),
    constraint pk_gender primary key(gender_id)
);

CREATE TABLE loansanction.dim_marriage
(
    marriage_id integer identity(1,1) not null,
    married varchar(200),
    constraint pk_marriage primary key(marriage_id)
);

CREATE TABLE loansanction.dim_education
(
    education_id integer identity(1,1) not null,
    education varchar(200),
    constraint pk_education primary key(education_id)
);

CREATE TABLE loansanction.dim_self_employed
(
    self_employed_id integer identity(1,1) not null,
    self_employed varchar(200),
    constraint pk_self_employed primary key(self_employed_id)
);

CREATE TABLE loansanction.dim_property_area
(
    property_area_id integer identity(1,1) not null,
    property_area varchar(200),
    constraint pk_property_area primary key(property_area_id)
);

CREATE TABLE loansanction.loan_sanction_staging (
    loan_id varchar(200),
    gender_id integer,
    marriage_id integer,
    dependents varchar(200),
    education_id integer,
    self_employed_id integer,
    property_area_id integer,
    applicantincome integer,
    coapplicantincome integer,
    loanamount integer,
    loan_amount_term integer,
    credit_history integer    
);