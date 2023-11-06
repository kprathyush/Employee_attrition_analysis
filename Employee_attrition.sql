-- Databricks notebook source
select * from emp_att;

-- COMMAND ----------

select count(EmployeeCount), Attrition from emp_att
group by attrition;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ###find out by age_grp

-- COMMAND ----------

select sum(EmployeeCount),
case
when age between 20 and 25 then '20-25'
when age between 26 and 32 then '26-32'
when age between 33 and 39 then '33-39'
else '40+'
end age_group
from emp_att
where Attrition='Yes'
group by age_group
order by age_group;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ###find out attrition by dept

-- COMMAND ----------

select sum(EmployeeCount), department from emp_att
where Attrition='Yes'
group by Department;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ##attrition by education

-- COMMAND ----------

select sum(EmployeeCount), 
case 
when education=1 then 'No degree'
when education=2 then 'College'
when education=3 then 'Bachelors'
when education=4 then 'Masters'
else 'PhD'
end as Education_group
from emp_att
where Attrition="Yes"
group by Education
order by Education;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ###attrition based on environment satisfaction

-- COMMAND ----------

select sum(EmployeeCount), EnvironmentSatisfaction
from emp_att
where Attrition="Yes"
group by EnvironmentSatisfaction
order by EnvironmentSatisfaction;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ###attrition based on business travel

-- COMMAND ----------

select sum(EmployeeCount), BusinessTravel
from emp_att
where Attrition="Yes"
group by BusinessTravel;

-- COMMAND ----------



-- COMMAND ----------


