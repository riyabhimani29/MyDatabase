USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[API_PROAPP_GetVersion]    Script Date: 26-04-2026 17:29:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

                             
 ALTER PROCEDURE [dbo].[API_PROAPP_GetVersion]                            
 @PROUser_Id  int = 0       
 AS                             
    SET NOCOUNT ON           
         
   select 9.0 AS VersionNo   
GO


