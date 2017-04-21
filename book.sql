create table Book
(
  bookId number not null,
  book_name varchar2(20) not null,
  student_name varchar2(20) not null,
  book_author varchar2(20) not null,
  date_return date not null
);

ALTER TABLE BOOK
ADD CONSTRAINT bookId_pk PRIMARY KEY (STUDENT_EMAIL_FK); -- primary key

ALTER TABLE BOOK
ADD CONSTRAINT bookId FOREIGN KEY (STUDENT_EMAIL_FK) REFERENCES STUDENT (student_name_fk);