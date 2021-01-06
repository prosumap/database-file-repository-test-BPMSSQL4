SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Created by :		ajay.pandey
-- Created date: <Create Date,,>
-- Description:	<Description,,>
-- Last modified by Tomas on 9/15/2020
-- =============================================
create PROCEDURE [dbo].[SpDailyUpd070ApdProdSku]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO ExpMkTbl_ProdSku
                         (OFFER_ID, OFFER, [GO LIVE FISCAL WEEK], [GO LIVE FISCAL YEAR], CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], [SIZE DESCRIPTION], INV5, INV7, Sku, COST_EA, UNIT_PRICE, 
                         [Vendor #], [Vendor Name], [Vendor Style], [POS Date], INET_Catalog, INET_Price, INET_OriginalPrice, INET_Status, [OH UNITS], [OO UNITS], [EVENT BOP UNITS], NDC, [PO STATUS], [PO #], [REQ #], [APPROVED DATE])
SELECT        vwDailyUpdSlct_ProdSku_4.offer_id, vwDailyUpdSlct_ProdSku_4.OFFER, vwDailyUpdSlct_ProdSku_4.[go live fiscal week], vwDailyUpdSlct_ProdSku_4.[go live fiscal year], vwDailyUpdSlct_ProdSku_4.cat_description, 
                         vwDailyUpdSlct_ProdSku_4.subcat_description, vwDailyUpdSlct_ProdSku_4.[style description], vwDailyUpdSlct_ProdSku_4.[color description], vwDailyUpdSlct_ProdSku_4.[size description], vwDailyUpdSlct_ProdSku_4.inv5, 
                         vwDailyUpdSlct_ProdSku_4.inv7, vwDailyUpdSlct_ProdSku_4.sku, vwDailyUpdSlct_ProdSku_4.cost_ea, vwDailyUpdSlct_ProdSku_4.unit_price, vwDailyUpdSlct_ProdSku_4.[vendor #], vwDailyUpdSlct_ProdSku_4.[vendor name],
                          vwDailyUpdSlct_ProdSku_4.[vendor style], vwDailyUpdSlct_ProdSku_4.[pos date], vwDailyUpdSlct_ProdSku_4.inet_catalog, vwDailyUpdSlct_ProdSku_4.inet_price, vwDailyUpdSlct_ProdSku_4.inet_originalprice, 
                         vwDailyUpdSlct_ProdSku_4.inet_status, vwDailyUpdSlct_ProdSku_4.[oh units], vwDailyUpdSlct_ProdSku_4.[oo units], MkTbl_WklyInventoryForecast.[BOP UNITS] AS [EVENT BOP UNITS], vwDailyUpdSlct_ProdSku_4.ndc, 
                         vwDailyUpdSlct_ProdSku_4.[po status], vwDailyUpdSlct_ProdSku_4.[po #], vwDailyUpdSlct_ProdSku_4.[req #], vwDailyUpdSlct_ProdSku_4.[approved date]
FROM            vwDailyUpdSlct_ProdSku_4 LEFT OUTER JOIN
                         MkTbl_WklyInventoryForecast ON vwDailyUpdSlct_ProdSku_4.[go live fiscal year] = MkTbl_WklyInventoryForecast.FISCAL_YEAR AND 
                         vwDailyUpdSlct_ProdSku_4.[go live fiscal week] = MkTbl_WklyInventoryForecast.FISCAL_WEEK AND vwDailyUpdSlct_ProdSku_4.sku = MkTbl_WklyInventoryForecast.INV10

END
GO
