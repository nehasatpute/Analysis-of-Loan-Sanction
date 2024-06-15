insert into loansanction.dim_gender(gender)
select distinct gender from loansanction.loan_sanction_staging where gender is not null;

UPDATE loansanction.loan_sanction_staging
SET gender_id = loansanction.dim_gender.gender_id
FROM loansanction.dim_gender
WHERE loansanction.loan_sanction_staging.gender = loansanction.dim_gender.gender;

-------------------------------------------

insert into loansanction.dim_marriage(married)
select distinct married from loansanction.loan_sanction_staging where married is not null;

UPDATE loansanction.loan_sanction_staging
SET marriage_id = loansanction.dim_marriage.marriage_id
FROM loansanction.dim_marriage
WHERE loansanction.loan_sanction_staging.married = loansanction.dim_marriage.married;

--------------------------------------------

insert into loansanction.dim_education(education)
select distinct education from loansanction.loan_sanction_staging where education is not null;

UPDATE loansanction.loan_sanction_staging
SET education_id = loansanction.dim_education.education_id
FROM loansanction.dim_education
WHERE loansanction.loan_sanction_staging.education = loansanction.dim_education.education;

------------------------


insert into loansanction.dim_self_employed(self_employed)
select distinct self_employed from loansanction.loan_sanction_staging where self_employed is not null;

UPDATE loansanction.loan_sanction_staging
SET self_employed_id = loansanction.dim_self_employed.self_employed_id
FROM loansanction.dim_self_employed
WHERE loansanction.loan_sanction_staging.self_employed = loansanction.dim_self_employed.self_employed;


---------------------------------------


insert into loansanction.dim_property_area(property_area)
select distinct property_area from loansanction.loan_sanction_staging where property_area is not null;

UPDATE loansanction.loan_sanction_staging
SET property_area_id = loansanction.dim_property_area.property_area_id
FROM loansanction.dim_property_area
WHERE loansanction.loan_sanction_staging.property_area = loansanction.dim_property_area.property_area;


insert into loansanction.loansanction_fact
SELECT
loan_id,
gender_id,
marriage_id,
dependents,
education_id,
self_employed_id,
property_area_id,
applicantincome,
coapplicantincome,
loanamount,
loan_amount_term,
credit_history
from loansanction.loan_sanction_staging;