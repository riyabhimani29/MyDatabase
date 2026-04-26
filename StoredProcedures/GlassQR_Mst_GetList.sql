USE [db_a8637c_twfgallery]
GO

/****** Object:  StoredProcedure [dbo].[GlassQR_Mst_GetList]    Script Date: 26-04-2026 18:18:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[GlassQR_Mst_GetList]                                  
@Dept_ID  int  = 1  ,  
@Typ varchar(10)='OUT'  
                                  
AS                                  
                                  
SET NOCOUNT ON                                  
                      
      
if ( @Typ = 'GRN' )  
  begin  
      select a.PO_Id AS Glass_QR_Id,  
             PO_MST.OrderNo Challan_no  
      from   (select distinct PO_Id  
              from   GlassQR_Dtl with (nolock)  
              where  Is_GRN = 0
			  and QR_Typedtl = '') a  
             left join PO_MST with (nolock) On a.PO_Id = PO_MST.PO_Id  
      order  by PO_MST.OrderNo desc  
  end  
else  
  begin  
      select a.PO_Id AS Glass_QR_Id,  
             PO_MST.OrderNo Challan_no  
      from   (select distinct PO_Id  
              from   GlassQR_Dtl with (nolock)  
              where  Is_Out = 0 ) a  
             left join PO_MST with (nolock) On a.PO_Id = PO_MST.PO_Id  
      order  by PO_MST.OrderNo desc  
  end
GO


