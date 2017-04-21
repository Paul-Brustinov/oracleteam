create table STUDENT_CAR(
    STUDENT_EMAIL_FK varchar2(20)
  , STUDENT_CAR_NO  varchar2(20),
  student_car_model varchar2(20)
)

alter table STUDENT_CAR add constraint sudent_car_PK primary key (STUDENT_EMAIL_FK, STUDENT_CAR_NO);

alter table STUDENT_CAR add constraint student_car_FK1 foreign key(STUDENT_EMAIL_FK) REFERENCES STUDENT(STUDENT_EMAIL);