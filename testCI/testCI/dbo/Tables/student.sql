CREATE TABLE [dbo].[student] (
    [student_id] INT            NULL,
    [name]       NVARCHAR (100) NULL,
    [gender]     NCHAR (1)      NULL,
    [mentor]     NVARCHAR (100) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ind_id]
    ON [dbo].[student]([student_id] ASC);

