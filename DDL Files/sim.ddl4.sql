drop view S16_pre_emp_view ;
drop view S16_employee_view ;
drop view S16_manager_view ;
drop view S16_president_view;
drop view S16_interim_manager_view;
drop view S16_previous_project_view;
drop view  S16_current_project_view;
drop view S16_project_employee_view;



create view S16_pre_emp_view as
SELECT 
   per_id,
   type,
   is_Fired,
    Prev_emp_sal
FROM S16_person where type = 'Previous_Employee' ;

create or replace TRIGGER S16_pre_emp
     INSTEAD OF insert ON S16_pre_emp_view
     FOR EACH ROW
BEGIN
    insert into s16_person(
        per_id,
        type,
        is_Fired,
        Prev_emp_sal)
    VALUES ( 
        :NEW.per_id,
        'Previous_Employee',
        :NEW.is_Fired,
        :NEW.Prev_emp_sal
        ) ;
END;
/
create view S16_employee_view as
SELECT 
    per_id,
    type,
    employee_id,
    emp_sal,
    emp_sal_excption,
    S16_Person_Per_id
FROM S16_person where type = 'Employee' ;

create or replace TRIGGER S16_employee_trigger
     INSTEAD OF insert ON S16_employee_view
     FOR EACH ROW
BEGIN
    insert into s16_person(
        per_id,
        type,
        employee_id,
        emp_sal,
        emp_sal_excption,
        S16_Person_Per_id)
    VALUES ( 
        :NEW.per_id,
        'Employee',
        :NEW.employee_id,
        :NEW.emp_sal,
        :NEW.emp_sal_excption,
        :NEW.S16_Person_Per_id) ;
END;
/

create view S16_manager_view as
SELECT 
    per_id,
    type,
    bonus,
    S16_dept_dept_no
FROM S16_person where type = 'manager' ;

create or replace TRIGGER S16_manager_trigger
     INSTEAD OF insert ON S16_manager_view
     FOR EACH ROW
BEGIN
    insert into s16_person(
        per_id,
        type,
        bonus,
        S16_dept_dept_no
        )
    VALUES ( 
        :NEW.per_id,
        'manager',
        :NEW.bonus,
        :NEW.S16_dept_dept_no) ;
END;
/


create view S16_president_view as
SELECT 
   per_id,
   type,
   is_president
FROM S16_person where type = 'president' ;

create or replace TRIGGER S16_president
     INSTEAD OF insert ON S16_president_view
     FOR EACH ROW
BEGIN
    insert into s16_person(
        per_id,
        type,
        is_president)
    VALUES ( 
        :NEW.per_id,
        'president',
        'True'
        ) ;
END;
/

create view S16_interim_manager_view as
SELECT 
   per_id,
   type,
   is_interim_manager
FROM S16_person where type = 'interim_manager' ;

create or replace TRIGGER S16_interim_manager
     INSTEAD OF insert ON S16_interim_manager_view
     FOR EACH ROW
BEGIN
    insert into s16_person(
        per_id,
        type,
        is_interim_manager)
    VALUES ( 
        :NEW.per_id,
        'interim_manager',
        'True'
        ) ;
END;
/

create view S16_previous_project_view as
SELECT
    Proj_id,
    type,
    end_date_month,
    end_date_day,
    end_date_year,
    end_person_hours
FROM S16_Project where type = 'Previous_Project';

create or replace TRIGGER S16_previous_project
    INSTEAD OF insert ON S16_previous_project_view
    FOR EACH ROW
BEGIN
    insert into S16_Project(
        Proj_id,
        type,
        end_date_month,
        end_date_day,
        end_date_year,
        end_person_hours)
    VALUES (
        :NEW.Proj_id,
        'Previous_Project',
        :NEW.end_date_month,
        :NEW.end_date_day,
        :NEW.end_date_year,
        :NEW.end_person_hours);
END;
/


create view S16_current_project_view as
SELECT
    Proj_id,
    type,
    project_active
FROM S16_Project where type = 'current_project';

create or replace TRIGGER S16_current_project
    INSTEAD OF insert ON S16_current_project_view
    FOR EACH ROW
BEGIN
    insert into S16_Project(
        Proj_id,
        type,
        project_active)
    VALUES (
        :NEW.Proj_id,
        'current_project',
        :NEW.project_active
        );
END;
/

create view S16_project_employee_view as
SELECT 
   per_id,
   type
FROM S16_person where type = 'project_employee' ;

create or replace TRIGGER S16_project_employee
     INSTEAD OF insert ON S16_project_employee_view
     FOR EACH ROW
BEGIN
    insert into s16_person(
        per_id,
        type
       )
    VALUES ( 
        :NEW.per_id,
        'project_employee'
        ) ;
END;
/