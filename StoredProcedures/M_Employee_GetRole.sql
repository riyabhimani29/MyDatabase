USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[M_Employee_GetRole]    Script Date: 26-04-2026 18:38:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[M_Employee_GetRole]
@SearchParam		VARCHAR(Max)  = ''

AS

SET NOCOUNT ON


select * from   M_Employee_Role where Is_Active =1 

 
GO


