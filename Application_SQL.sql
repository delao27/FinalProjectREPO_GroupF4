--SQL code used in part 1 of application


--Page 1 Sets value for type used for security reasons 
declare
    return_val Number := 0;
begin
    if :P1_NEW = 'Employee' then
        return_val := 1;
    elsif    :P1_NEW = 'interim_manager' or :P1_NEW = 'manager' then
        return_val := 2;
    elsif    :P1_NEW = 'president' then
        return_val := 3;
    
    end if;
    :TYPE := return_val;
end;
/
--Page 2 displayes person removing foreign keys
select h."PER_ID", 
h."FIRST_NAME",
h."LAST_NAME",
h."HOME_ADDRESS",
h."ZIPCODE",
h."HOME_PHONE",
h."US_CITIZEN",
s.first_name || ' ' || s.last_name as "Spouse",
h."IS_FIRED",
h."PREV_EMP_SAL",
h."EMPLOYEE_ID",
h."EMP_SAL",
h."EMP_SAL_EXCPTION",
h."BONUS",
h."DEPT_NO",
h."IS_PRESIDENT",
h."IS_INTERIM_MANAGER",
h."S16_DEPT_DEPT_NO",
h."TYPE",
h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_PERSON" h left outer join "#OWNER#".s16_Person s 
on (h.s16_person_per_id1 = s.per_id)
 / 

-- Page 4 displays Project 
select h."PROJ_ID", 
h."PROJECT_TITLE",
s.dept_name,
sub_proj.project_title as Main_Project,
p.first_name || ' ' || p.last_name as Name,
h."END_DATE_MONTH",
h."END_DATE_DAY",
h."END_DATE_YEAR",
h."END_PERSON_HOURS",
h."PROJECT_ACTIVE",
h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_PROJECT" h 
left outer join "#OWNER#".s16_dept s on (h."S16_DEPT_DEPT_NO" = s.dept_no)
left outer join S16_Person p on (h.S16_Person_per_id = p.per_id)
left outer join S16_Project sub_proj on (h.S16_project_proj_id = sub_proj.proj_id)
/

--Page 6 displays Department
select s.first_name || ' ' || s.last_name as Manager,
h."DEPT_NO", 
h."DEPT_NAME",

h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_DEPT" h left outer join "#OWNER#".s16_Person s 
on (h.dept_no = s.S16_dept_dept_no)
/

--Page 8 displays EMP
select p.per_id, 
p.first_name || ' ' || p.last_name as Employee_NAME, 
h."TYPE",
h."EMPLOYEE_ID",
h."EMP_SAL",
h."EMP_SAL_EXCPTION",
h."S16_PERSON_PER_ID"
from "#OWNER#"."S16_EMPLOYEE_VIEW" h left outer join S16_Person p on (h.per_id = p.per_id)
/

--Page 10 gets pending approval Projects 
select h."PROJ_ID", 
h."PROJECT_TITLE",
s.dept_name,
sub_proj.Project_title as Main_Project,
p.first_name || ' ' || p.last_name as Name_EMP,
h."END_DATE_MONTH",
h."END_DATE_DAY",
h."END_DATE_YEAR",
h."END_PERSON_HOURS",
h."PROJECT_ACTIVE",
h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_PROJECT" h 
left outer join "#OWNER#".s16_dept s on (h."S16_DEPT_DEPT_NO" = s.dept_no)
left outer join S16_Project sub_proj on (h.S16_project_proj_id = sub_proj.proj_id)
left outer join S16_Person p on (h.S16_person_per_id = p.per_id)
where h."PROJECT_ACTIVE" = 'False'
/

--Page 10 gets assigned projects 
select h."PROJ_ID", 
h."PROJECT_TITLE",
s.dept_name,
h."S16_PROJECT_PROJ_ID",
h."S16_PERSON_PER_ID",
h."END_DATE_MONTH",
h."END_DATE_DAY",
h."END_DATE_YEAR",
h."END_PERSON_HOURS",
h."PROJECT_ACTIVE",
h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_PROJECT" h 
left outer join "#OWNER#".s16_dept s on (h."S16_DEPT_DEPT_NO" = s.dept_no)
where h."S16_PERSON_PER_ID" = :LOGIN
/

--Page 10 gets projects managed
select h."PROJ_ID", 
h."PROJECT_TITLE",
s.dept_name,
sub_proj.Project_title as Main_Project,
p.first_name || ' ' || p.last_name as Name_EMP,
h."END_DATE_MONTH",
h."END_DATE_DAY",
h."END_DATE_YEAR",
h."END_PERSON_HOURS",
h."PROJECT_ACTIVE",
h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_PROJECT" h 
left outer join "#OWNER#".s16_dept s on (h."S16_DEPT_DEPT_NO" = s.dept_no)
left outer join S16_Project sub_proj on (h.S16_project_proj_id = sub_proj.proj_id)
left outer join S16_Person p on (h.S16_person_per_id = p.per_id)
where h."S16_DEPT_DEPT_NO" = (select S16_dept_dept_no from S16_Person where Per_id = :LOGIN)
/

--Page 10 gets Active Projects 
select h."PROJ_ID", 
h."PROJECT_TITLE",
s.dept_name,
sub_proj.project_title as Main_Project,
p.first_name || ' ' || p.last_name as Name_EMP,
h."END_DATE_MONTH",
h."END_DATE_DAY",
h."END_DATE_YEAR",
h."END_PERSON_HOURS",
h."PROJECT_ACTIVE",
h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_PROJECT" h 
left outer join "#OWNER#".s16_dept s on (h."S16_DEPT_DEPT_NO" = s.dept_no)
left outer join S16_Project sub_proj on (h.S16_project_proj_id = sub_proj.proj_id)
left outer join S16_Person p on (h.S16_person_per_id = p.per_id)
where h."PROJECT_ACTIVE" = 'True'
/

--Page 10 gets Employee
select 
first_name || ' ' || last_name as Employee_NAME, 
"TYPE",
"EMP_SAL",
"EMP_SAL_EXCPTION",
"PER_ID"
from S16_Person  where (TYPE = 'Employee')
/

--Page 13 gets previous Employee
select "PER_ID", 
"FIRST_NAME",
"LAST_NAME",
"HOME_ADDRESS",
"ZIPCODE",
"HOME_PHONE",
"US_CITIZEN",
"S16_PERSON_PER_ID1",
"IS_FIRED",
"PREV_EMP_SAL",
"EMPLOYEE_ID",
"EMP_SAL",
"EMP_SAL_EXCPTION",
"BONUS",
"DEPT_NO",
"IS_PRESIDENT",
"IS_INTERIM_MANAGER",
"S16_DEPT_DEPT_NO",
"S16_PERSON_PER_ID",
"TYPE",
"CREATED",
"CREATED_BY",
"ROW_VERSION_NUMBER",
"UPDATED",
"UPDATED_BY"
from "#OWNER#"."S16_PERSON" where is_fired = 'Y'
/

--Page 20 gets manager
select s.first_name , s.last_name, s.per_id,
h."BONUS",
h."TYPE",
d.dept_name
from "#OWNER#"."S16_MANAGER_VIEW" h left outer join "#OWNER#".S16_Person s on (h.per_id = s.per_id) left outer join
"#OWNER#".S16_dept d on (h.s16_dept_dept_no = d.dept_no)
/

--Page 22 gets president
select s.first_name,
s.last_name,
h."TYPE"
from "#OWNER#"."S16_PRESIDENT_VIEW" h left outer join S16_Person s  on(h.per_id = s.per_id)
/

--page 24 gets current project
select h."PROJ_ID", 
h."PROJECT_TITLE",
s.dept_name,
sub_proj.project_title as Main_Project,
p.first_name || ' ' || p.last_name as Name,
h."END_DATE_MONTH",
h."END_DATE_DAY",
h."END_DATE_YEAR",
h."END_PERSON_HOURS",
h."PROJECT_ACTIVE",
h."CREATED",
h."CREATED_BY",
h."ROW_VERSION_NUMBER",
h."UPDATED",
h."UPDATED_BY"
from "#OWNER#"."S16_PROJECT" h 
left outer join "#OWNER#".s16_dept s on (h."S16_DEPT_DEPT_NO" = s.dept_no)
left outer join S16_Person p on (h.S16_Person_per_id = p.per_id)
left outer join S16_Project sub_proj on (h.S16_project_proj_id = sub_proj.proj_id)
where (h.project_active = 'True')
/

