USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[Visitors_Digital_GetList]    Script Date: 26-04-2026 19:54:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

                                                                  
ALTER    PROCEDURE [dbo].[Visitors_Digital_GetList]                                                                  
@VisitorsId int  = 0     
                                                                  
AS                                                                  
                                                                  
SET NOCOUNT ON                                 
        
SELECT Visitors_Digital.Ids   
      ,Visitors_Digital.VisitorsId   
      ,Visitors_Digital.FileName     
  FROM [dbo].[Visitors_Digital]  WITH(NOLOCK)       
  where   dbo.Visitors_Digital.VisitorsId = @VisitorsId           
GO


