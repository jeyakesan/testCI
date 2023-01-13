/****** Script for SelectTopNRows command from SSMS  ******/
/*** 
SELECT TOP (1000) [student_id]
      ,[remarks]
  FROM [SQL Practice].[dbo].[Remarks] ***/

/**   create view stud_remarks as
  select s.student_id, s.name, s.gender, s.mentor 
  from student s
  inner join Remarks r on s.student_id=r.student_id; **/

 --  select * from stud_remarks;

 CREATE view stud_remarks as
  select s.student_id, s.name, r.remarks,s.gender, s.mentor 
  from student s
  inner join Remarks r on s.student_id=r.student_id;

