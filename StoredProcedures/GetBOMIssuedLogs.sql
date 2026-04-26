USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[GetBOMIssuedLogs]    Script Date: 26-04-2026 18:08:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[GetBOMIssuedLogs]
    @Project_Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        B.Project_Id,
        B.Action_Details,
        B.Quantity,
        B.Entry_User,
        E.Emp_Name
    FROM BOM_Logs B

    LEFT JOIN M_Employee E
        ON B.Entry_User = E.Emp_Id

    WHERE B.Project_Id = @Project_Id
      AND B.Status = 'Issued';

END
GO


