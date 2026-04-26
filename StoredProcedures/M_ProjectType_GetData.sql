USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[M_ProjectType_GetData]    Script Date: 26-04-2026 19:05:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  
ALTER PROCEDURE [dbo].[M_ProjectType_GetData]  
@SearchParam  VARCHAR(Max)  = ''  
  
AS  
  
SET NOCOUNT ON   
 

SELECT 
	M_ProjectType.Project_Type_Id,
	M_ProjectType.Project_Type,
	M_ProjectType.Is_Active,
	M_ProjectType.Remark
 From M_ProjectType With (NOLOCK) 
GO


