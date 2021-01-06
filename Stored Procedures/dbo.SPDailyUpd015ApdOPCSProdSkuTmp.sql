SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

Create Procedure [dbo].[SPDailyUpd015ApdOPCSProdSkuTmp]
as 
begin
INSERT INTO tmpDailyUpdOPCSProdSku
SELECT RefTbl_OPCSProdSku.*
FROM RefTbl_OPCSProdSku;

end
GO
