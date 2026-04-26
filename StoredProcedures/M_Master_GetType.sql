USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[M_Master_GetType]    Script Date: 26-04-2026 19:00:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  
    
ALTER PROCEDURE [dbo].[M_Master_GetType]    
@SearchParam  varchar(50)  = ''  
    
AS    
    
SET NOCOUNT ON    
   
 select   Master_Type from M_MasterType WHERE Is_Active=1  order by Master_Type  
    
GO


