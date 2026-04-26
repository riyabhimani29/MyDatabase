USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[M_OtherSetting_Get]    Script Date: 26-04-2026 19:01:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER  PROCEDURE [dbo].[M_OtherSetting_Get] @Master_Id INT = 99                  
AS                    
    SET nocount ON                         
SELECT  M_Setting.Lockindate 
 From M_Setting With (NOLOCK)
 where Master_Id = @Master_Id
GO


