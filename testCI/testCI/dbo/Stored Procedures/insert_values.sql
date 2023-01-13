CREATE procedure [dbo].[insert_values]
(@student_id		int =NULL ,
@name				nvarchar(100) = NULL,
@gender				nchar =NULL,
@mentor				nvarchar(100) =NULL,
@statement_type		nvarchar(100)=NULL )

as 
	begin
		set nocount on
		if @statement_type = 'insert'
			begin 
				insert into student (student_id,name,gender,mentor)
							values (@student_id,@name,@gender,@mentor)
			end
		if @statement_type = 'select'
			begin
				select * from student
			end
		if @statement_type = 'update'
			begin 
				update student 
				set name=@name,					
					gender=@gender,
					mentor=@mentor
				where student_id=@student_id
			end
		else if @statement_type='delete'
			begin 
				delete from student where student_id=@student_id
			end
	end

-- The comment from Main Branch

-- The Comment for second commit

-- Checking one more time

-- Comment for Feature 1 Branch !! 

-- comment from feature 2 branch

-- Comment for testing CI

-- Comment from Feature BR2 for CI