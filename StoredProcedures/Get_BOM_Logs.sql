USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[Get_BOM_Logs]    Script Date: 26-04-2026 18:07:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Get_BOM_Logs]
	@Project_Id int = 0
AS
BEGIN
    SET NOCOUNT ON;
    SELECT (
    SELECT * FROM BOM_Logs where
  	Project_Id = @Project_Id 
  	ORDER BY BOM_Logs.Log_Id DESC
  	FOR JSON PATH, INCLUDE_NULL_VALUES
    ) as json;
END
GO


