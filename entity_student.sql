create table STUDENT(
 STUDENT_EMAIL varchar2(20) not null
,STUDENT_NAME varchar2(20) not null
);

alter table STUDENT add constraint sudent_pk PRIMARY KEY(STUDENT_EMAIL);