DROP SEQUENCE S16_Person_seq ; 
create sequence S16_Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger S16_Person_PK_trig 
before insert on S16_Person
for each row 
begin 
select S16_Person_seq.nextval into :new.Per_id from dual; 
end; 
/
alter table S16_Person add created date ; 
alter table S16_Person add created_by VARCHAR2 (255) ; 
alter table S16_Person add row_version_number integer ; 
alter table S16_Person add updated date ; 
alter table S16_Person add updated_by VARCHAR2 (255) ; 
/
create or replace trigger S16_Person_AUD_trig 
before insert or update on S16_Person 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE S16_Project_seq ; 
create sequence S16_Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger S16_Project_PK_trig 
before insert on S16_Project
for each row 
begin 
select S16_Project_seq.nextval into :new.Proj_id from dual; 
end; 
/
alter table S16_Project add created date ; 
alter table S16_Project add created_by VARCHAR2 (255) ; 
alter table S16_Project add row_version_number integer ; 
alter table S16_Project add updated date ; 
alter table S16_Project add updated_by VARCHAR2 (255) ; 
/
create or replace trigger S16_Project_AUD_trig 
before insert or update on S16_Project 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

-- Table S16_curr_Proj has a compound primary key so no sequence or trigger was created for it.
DROP SEQUENCE S16_dept_seq ; 
create sequence S16_dept_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger S16_dept_PK_trig 
before insert on S16_dept
for each row 
begin 
select S16_dept_seq.nextval into :new.dept_no from dual; 
end; 
/
alter table S16_dept add created date ; 
alter table S16_dept add created_by VARCHAR2 (255) ; 
alter table S16_dept add row_version_number integer ; 
alter table S16_dept add updated date ; 
alter table S16_dept add updated_by VARCHAR2 (255) ; 
/
create or replace trigger S16_dept_AUD_trig 
before insert or update on S16_dept 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

-- Table chi_par has a compound primary key so no sequence or trigger was created for it.
DROP INDEX S16_Person_Per_id_FK_0 ;
CREATE INDEX S16_Person_Per_id_FK_0 ON S16_Person(S16_Person_Per_id) ;
--DROP INDEX S16_Person_Per_id1_FK_1 ;
--CREATE INDEX S16_Person_Per_id1_FK_1 ON S16_Person(S16_Person_Per_id1) ;
DROP INDEX S16_dept_dept_no_FK_2 ;
CREATE INDEX S16_dept_dept_no_FK_2 ON S16_Person(S16_dept_dept_no) ;
DROP INDEX S16_Person_Per_id_FK_3 ;
CREATE INDEX S16_Person_Per_id_FK_3 ON S16_Project(S16_Person_Per_id) ;
DROP INDEX S16_Project_Proj_id_FK_4 ;
CREATE INDEX S16_Project_Proj_id_FK_4 ON S16_Project(S16_Project_Proj_id) ;
DROP INDEX S16_dept_dept_no_FK_5 ;
CREATE INDEX S16_dept_dept_no_FK_5 ON S16_Project(S16_dept_dept_no) ;
DROP INDEX S16_Person_Per_id_FK_6 ;
CREATE INDEX S16_Person_Per_id_FK_6 ON S16_curr_Proj(S16_Person_Per_id) ;
DROP INDEX S16_Project_Proj_id_FK_7 ;
CREATE INDEX S16_Project_Proj_id_FK_7 ON S16_curr_Proj(S16_Project_Proj_id) ;
DROP INDEX S16_Person_Per_id_FK_8 ;
CREATE INDEX S16_Person_Per_id_FK_8 ON chi_par(S16_Person_Per_id) ;
DROP INDEX S16_Person_Per_id1_FK_9 ;
CREATE INDEX S16_Person_Per_id1_FK_9 ON chi_par(S16_Person_Per_id1) ;
