SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd340ApdFinanceGTN] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_Finance_GTN
                         (YearMonth, Fiscal_Year, Fiscal_Month, Dmnd_Gross$, Dmnd_Net$, ImmCxl_Gross$, ImmCxl_Net$, Cxl_Gross$, Cxl_Net$, Disc$, Tax$, ShipHnd$, Ship_Gross$, Ship_Net$, Ship_Cost$)
SELECT        Fiscal_Year + Fiscal_Month AS YearMonth, Fiscal_Year, Fiscal_Month, ROUND(SUM(Dmnd_Gross$), 2) AS Dmnd_Gross$, ROUND(SUM(Dmnd_Net$), 2) AS Dmnd_Net$, ROUND(SUM(ImmCxl_Gross$), 2) AS ImmCxl_Gross$, 
                         ROUND(SUM(ImmCxl_Net$), 2) AS ImmCxl_Net$, ROUND(SUM(Cxl_Gross$), 2) AS Cxl_Gross$, ROUND(SUM(Cxl_Net$), 2) AS Cxl_Net$, ROUND(SUM(Dmnd_Gross$ - Dmnd_Net$), 2) AS Disc$, ROUND(SUM(Tax$), 2) AS Tax$, 
                         ROUND(SUM(ShipHnd$), 2) AS ShipHnd$, ROUND(SUM(Ship_Gross$), 2) AS Ship_Gross$, ROUND(SUM(Ship_Net$), 2) AS Ship_Net$, ROUND(SUM(Ship_Cost$), 2) AS Ship_Cost$
FROM            MkTbl_DailyDetail
GROUP BY Fiscal_Year + Fiscal_Month, Fiscal_Year, Fiscal_Month
ORDER BY YearMonth

END
GO
