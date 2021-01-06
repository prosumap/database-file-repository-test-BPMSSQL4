SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd330ApdDailyDetail] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_DailyDetail
                         (Item_Date, Fiscal_Wk, Fiscal_Month, Fiscal_Qtr, Fiscal_Year, Status, [Order Count], Dmnd_Units, Dmnd_Gross$, Dmnd_Net$, Dmnd_Cost$, ImmCx_Units, ImmCxl_Gross$, ImmCxl_Net$, ImmCxl_Cost$, Cxl_Units, Cxl_Gross$, 
                         Cxl_Net$, Cxl_Cost$, Ship_Units, Ship_Gross$, Ship_Net$, Ship_Cost$, Rtn_Units, Rtn_Gross$, Rtn_Net$, Rtn_Cost$, Exch_Units, Exch_Gross$, Exch_Net$, Exch_Cost$, Net_Units, Net_Gross$, Net_Net$, Net_Cost$, Tax$, 
                         ShipHnd$)
SELECT        vwDailyUpdSlct_DailyDetail_7.Item_Date, vwDailyUpdSlct_DailyDetail_7.Fiscal_Wk, vwDailyUpdSlct_DailyDetail_7.Fiscal_Month, vwDailyUpdSlct_DailyDetail_7.Fiscal_Qtr, vwDailyUpdSlct_DailyDetail_7.Fiscal_Year, 
                         vwDailyUpdSlct_DailyDetail_7.Status, vwDailyUpdSlct_DailyDetail_7.[Order Count], vwDailyUpdSlct_DailyDetail_7.Dmnd_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Dmnd_Gross$, 2) AS Expr1, 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Dmnd_Net$, 2) AS Expr2, ROUND(vwDailyUpdSlct_DailyDetail_7.Dmnd_Cost$, 2) AS Expr3, vwDailyUpdSlct_DailyDetail_7.ImmCx_Units, 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.ImmCxl_Gross$, 2) AS Expr4, ROUND(vwDailyUpdSlct_DailyDetail_7.ImmCxl_Net$, 2) AS Expr5, ROUND(vwDailyUpdSlct_DailyDetail_7.ImmCxl_Cost$, 2) AS Expr6, 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Cxl_Net$, 2) AS Expr7, ROUND(vwDailyUpdSlct_DailyDetail_7.Cxl_Gross$, 2) AS Expr8, ROUND(vwDailyUpdSlct_DailyDetail_7.Cxl_Net$, 2) AS Expr9, 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Cxl_Cost$, 2) AS Expr10, vwDailyUpdSlct_DailyDetail_7.Ship_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Ship_Gross$, 2) AS Expr11, ROUND(vwDailyUpdSlct_DailyDetail_7.Ship_Net$, 
                         2) AS Expr12, ROUND(vwDailyUpdSlct_DailyDetail_7.Ship_Cost$, 2) AS Expr13, vwDailyUpdSlct_DailyDetail_7.Rtn_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Rtn_Gross$, 2) AS Expr14, 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Rtn_Net$, 2) AS Expr15, ROUND(vwDailyUpdSlct_DailyDetail_7.Rtn_Cost$, 2) AS Expr16, vwDailyUpdSlct_DailyDetail_7.Exch_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Exch_Gross$, 
                         2) AS Expr17, ROUND(vwDailyUpdSlct_DailyDetail_7.Exch_Net$, 2) AS Expr18, ROUND(vwDailyUpdSlct_DailyDetail_7.Exch_Cost$, 2) AS Expr19, vwDailyUpdSlct_DailyDetail_7.Net_Units, 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Net_Gross$, 2) AS Expr20, ROUND(vwDailyUpdSlct_DailyDetail_7.Net_Net$, 2) AS Expr21, ROUND(vwDailyUpdSlct_DailyDetail_7.Net_Cost$, 2) AS Expr22, 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Tax$, 2) AS Expr23, ROUND(SUM(vwDailyUpdSlct_ShipHand.ShipHandDD), 2) AS ShipHnd$
FROM            vwDailyUpdSlct_ShipHand RIGHT OUTER JOIN
                         vwDailyUpdSlct_DailyDetail_7 ON vwDailyUpdSlct_ShipHand.MinOfItemDt = vwDailyUpdSlct_DailyDetail_7.Item_Date AND vwDailyUpdSlct_ShipHand.Status = vwDailyUpdSlct_DailyDetail_7.Status
GROUP BY vwDailyUpdSlct_DailyDetail_7.Item_Date, vwDailyUpdSlct_DailyDetail_7.Fiscal_Wk, vwDailyUpdSlct_DailyDetail_7.Fiscal_Month, vwDailyUpdSlct_DailyDetail_7.Fiscal_Qtr, vwDailyUpdSlct_DailyDetail_7.Fiscal_Year, 
                         vwDailyUpdSlct_DailyDetail_7.Status, vwDailyUpdSlct_DailyDetail_7.[Order Count], vwDailyUpdSlct_DailyDetail_7.Dmnd_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Dmnd_Gross$, 2), 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Dmnd_Net$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Dmnd_Cost$, 2), vwDailyUpdSlct_DailyDetail_7.ImmCx_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.ImmCxl_Gross$, 2), 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.ImmCxl_Net$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.ImmCxl_Cost$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Cxl_Gross$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Cxl_Net$, 2), 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Cxl_Cost$, 2), vwDailyUpdSlct_DailyDetail_7.Ship_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Ship_Gross$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Ship_Net$, 2), 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Ship_Cost$, 2), vwDailyUpdSlct_DailyDetail_7.Rtn_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Rtn_Gross$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Rtn_Net$, 2), 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Rtn_Cost$, 2), vwDailyUpdSlct_DailyDetail_7.Exch_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Exch_Gross$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Exch_Net$, 2), 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Exch_Cost$, 2), vwDailyUpdSlct_DailyDetail_7.Net_Units, ROUND(vwDailyUpdSlct_DailyDetail_7.Net_Gross$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Net_Net$, 2), 
                         ROUND(vwDailyUpdSlct_DailyDetail_7.Net_Cost$, 2), ROUND(vwDailyUpdSlct_DailyDetail_7.Tax$, 2)
ORDER BY vwDailyUpdSlct_DailyDetail_7.Item_Date, vwDailyUpdSlct_DailyDetail_7.Status

END
GO
