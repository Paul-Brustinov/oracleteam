create or replace procedure table_droper(table_name varchar2)
is
   counter int;
begin
   select count(*) into counter from user_tables where table_name = upper(table_name);
   if counter = 1 then
      execute immediate 'drop table '||table_name;
   end if;
end;
 select * from user_tables;
 
DECLARE
  TABLE_NAME VARCHAR2(200);
BEGIN
  TABLE_NAME := 'Table2';

  table_droper(
    TABLE_NAME => TABLE_NAME
  );
--rollback; 
END;

 select * from user_tables;

CREATE TABLE STUDENT(
STUDENT_EMAIL VARCHAR2(20) NOT NULL,
STUDENT_NAME VARCHAR2(20) NOT NULL
);

ALTER TABLE STUDENT
ADD CONSTRAINT student_PK PRIMARY KEY(STUDENT_EMAIL);
