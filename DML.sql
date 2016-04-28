truncate table S16_Person;
truncate table S16_Project;
truncate table S16_curr_Proj;
truncate table S16_dept;
truncate table chi_par;

alter trigger S16_pre_emp disable;
alter trigger S16_employee_trigger disable;
alter trigger S16_manager_trigger disable;
alter trigger S16_president disable;
alter trigger S16_interim_manager disable;
alter trigger S16_previous_project disable;
alter trigger S16_current_project disable;
alter trigger S16_project_employee disable;

ALTER TABLE chi_par disable CONSTRAINT chi_par_PK;
ALTER TABLE S16_Person disable CONSTRAINT S16_Person_S16_Person_FK;
ALTER TABLE S16_Person disable CONSTRAINT S16_Person_S16_Person_FKv1;
ALTER TABLE S16_Person disable CONSTRAINT S16_Person_S16_dept_FK;
ALTER TABLE S16_Project disable CONSTRAINT S16_Project_S16_Person_FK FOREIGN;
ALTER TABLE S16_Project disable CONSTRAINT S16_Project_S16_Project_FK FOREIGN;
ALTER TABLE S16_Project disable CONSTRAINT S16_Project_S16_dept_FK FOREIGN;
ALTER TABLE S16_curr_Proj disable CONSTRAINT S16_curr_Proj_S16_Person_FK;
ALTER TABLE S16_curr_Proj disable CONSTRAINT S16_curr_Proj_S16_Project_FK;
ALTER TABLE chi_par disable CONSTRAINT chi_par_S16_Person_FK FOREIGN;
ALTER TABLE chi_par disable CONSTRAINT chi_par_S16_Person_FKv1 FOREIGN;




INSERT INTO S16_Person S16_Person (Per_id,first_name,last_name ,home_address,zipcode , home_phone,us_citizen,S16_Person_Per_id1 , is_Fired,Prev_emp_sal ,employee_id ,emp_sal,emp_sal_excption,bonus,dept_no,is_President,is_interim_manager, S16_dept_dept_no,S16_Person_Per_id,type)
Values (1,'Jesus', 'De La O','HOME 1', 78712, 555555555, 'Y', , 'N',NULL , 10, 55000, 'Y',10000, 5, 'N', 'N', , ,'EMP' );
INSERT INTO S16_Person S16_Person (Per_id,first_name,last_name ,home_address,zipcode , home_phone,us_citizen,S16_Person_Per_id1 , is_Fired,Prev_emp_sal ,employee_id ,emp_sal,emp_sal_excption,bonus,dept_no,is_President,is_interim_manager, S16_dept_dept_no,S16_Person_Per_id,type)
Values (1,'Barack', 'OBAMA','HOME 2', 78612, 56666666, 'Y', , 'N',NULL , 20, 12000, 'Y',10000, 5, 'Y', 'N', , ,'President' );
INSERT INTO S16_Project (Proj_id, Project_title, S16_dept_dept_no,S16_Project_Proj_id, S16_Person_Per_id , end_date_month ,end_date_day ,end_date_year, end_person_hours, project_active, type)
Values (20, 'PINTOS', , , 3, , , , , , 'Y', 'project_active');
INSERT INTO S16_Project (Proj_id, Project_title, S16_dept_dept_no,S16_Project_Proj_id, S16_Person_Per_id , end_date_month ,end_date_day ,end_date_year, end_person_hours, project_active, type)
Values (50, 'UTCS', , , 10, , , , , , 'N', 'project_inactive');
INSERT INTO S16_dept (dept_no, dept_name)
Values (40, 'Cedar Parl');
INSERT INTO S16_dept (dept_no, dept_name)
Values (41, 'Austin');
INSERT INTO S16_dept (dept_no, dept_name)
Values (42, 'Round Rock');


alter trigger S16_pre_emp enable;
alter trigger S16_employee_trigger enable;
alter trigger S16_manager_trigger enable;
alter trigger S16_president enable;
alter trigger S16_interim_manager enable;
alter trigger S16_previous_project enable;
alter trigger S16_current_project enable;
alter trigger S16_project_employee enable;

ALTER TABLE chi_par enable CONSTRAINT chi_par_PK;
ALTER TABLE S16_Person enable CONSTRAINT S16_Person_S16_Person_FK;
ALTER TABLE S16_Person enable CONSTRAINT S16_Person_S16_Person_FKv1;
ALTER TABLE S16_Person enable CONSTRAINT S16_Person_S16_dept_FK;
ALTER TABLE S16_Project enable CONSTRAINT S16_Project_S16_Person_FK FOREIGN;
ALTER TABLE S16_Project enable CONSTRAINT S16_Project_S16_Project_FK FOREIGN;
ALTER TABLE S16_Project enable CONSTRAINT S16_Project_S16_dept_FK FOREIGN;
ALTER TABLE S16_curr_Proj enable CONSTRAINT S16_curr_Proj_S16_Person_FK;
ALTER TABLE S16_curr_Proj enable CONSTRAINT S16_curr_Proj_S16_Project_FK;
ALTER TABLE chi_par enable CONSTRAINT chi_par_S16_Person_FK FOREIGN;
ALTER TABLE chi_par enable CONSTRAINT chi_par_S16_Person_FKv1 FOREIGN;