-- Creating a new database 
create database heart_disease;

use heart_disease;

select * from heart;

-- Create age bins (age groups) in Mysql as a column and create a view for that

alter table heart
add column age_group varchar(10);

-- Exiting safe update mode
SET SQL_SAFE_UPDATES = 0;

UPDATE heart 
SET 
    age_group = CASE
        WHEN age BETWEEN 29 AND 39 THEN '29-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        WHEN age BETWEEN 60 AND 69 THEN '60-69'
        WHEN age >= 70 THEN '70+'
    END
where age is not null;

 
 
CREATE VIEW heart_data_view AS
SELECT * FROM heart;

select * from heart_data_view;