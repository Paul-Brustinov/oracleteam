create table WORK(
  WORK_DATE date not null
, STUDENT_EMAIL_FK varchar2(20)
, WORK_TEXT varchar(200)
, WORK_MARK number
);

alter table WORK add constraint work_PK primary key(WORK_DATE, STUDENT_EMAIL_FK);

alter table WORK add constraint work_FK foreign key(STUDENT_EMAIL_FK) REFERENCES STUDENT(STUDENT_EMAIL);
