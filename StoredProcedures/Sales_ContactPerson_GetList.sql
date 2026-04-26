USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[Sales_ContactPerson_GetList]    Script Date: 26-04-2026 19:41:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

                                                                    
ALTER PROCEDURE [dbo].[Sales_ContactPerson_GetList]                                                                    
@ContactType VARCHAR(MAX) = '',
@Master_Id INT = 0
                                                                    
AS                                                                    
                                                                    
SET NOCOUNT ON                                   
          
SELECT * FROM Inquiry_Contacts
WHERE ContactType = @ContactType
AND Master_Id = case when @Master_Id = 0 then Master_Id ELSE @Master_Id END
ORDER BY ContactId DESC
GO


