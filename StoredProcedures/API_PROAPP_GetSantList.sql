USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[API_PROAPP_GetSantList]    Script Date: 26-04-2026 17:29:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

                     
 ALTER PROCEDURE [dbo].[API_PROAPP_GetSantList]                    
 @Stock_Type VARCHAR(10) = '' 
 AS                     
    SET NOCOUNT ON   
	

	SELECT [SantId]
      ,[SantoName]
      ,[IsActive]
      ,[Remark]
  FROM [dbo].[M_SantoNuList] with (nolock) where [dbo].[M_SantoNuList].IsActive = 1
GO


