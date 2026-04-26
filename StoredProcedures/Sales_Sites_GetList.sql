USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[Sales_Sites_GetList]    Script Date: 26-04-2026 19:46:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

                                                                    
ALTER PROCEDURE [dbo].[Sales_Sites_GetList]                                                                    
                                                           
AS                                                                    
                                                                    
SET NOCOUNT ON                                   
          
SELECT * FROM Inquiry_Sites
GO


