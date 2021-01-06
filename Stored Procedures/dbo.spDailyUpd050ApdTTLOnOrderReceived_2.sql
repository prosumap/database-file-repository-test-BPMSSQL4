SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC  [dbo].[spDailyUpd050ApdTTLOnOrderReceived_2]
AS
BEGIN
INSERT INTO mktbl_ttlonorderreceived 
            ([catalog], 
             [po #], 
             [req #], 
             [po status], 
             [ndc], 
             [group code], 
             [merch type], 
             [style desc], 
             [inv5], 
             [color desc], 
             [inv7], 
             [size desc], 
             [inv10], 
             [vendor #], 
             [vendor], 
             [vendor style #], 
             [cost ea], 
             [po cost], 
             [orig ordered units], 
             [cxl units], 
             [oo units], 
             [oo cost], 
             [received units], 
             [received cost], 
             [fiscal wk], 
             [fiscal month #], 
             [fiscal month], 
             [fiscal year], 
             [catalog desc], 
             [discounts]) 
SELECT vwDailyUpdSlct_HeldReqs_3.[catalog], 
       vwDailyUpdSlct_HeldReqs_3.[po #], 
       vwDailyUpdSlct_HeldReqs_3.[req #], 
       'held req'   AS [PO STATUS], 
       vwDailyUpdSlct_HeldReqs_3.[ndc], 
       vwDailyUpdSlct_HeldReqs_3.[group code], 
       vwDailyUpdSlct_HeldReqs_3.[merch type], 
       vwDailyUpdSlct_HeldReqs_3.[style desc], 
       vwDailyUpdSlct_HeldReqs_3.[inv5], 
       vwDailyUpdSlct_HeldReqs_3.[color desc], 
       vwDailyUpdSlct_HeldReqs_3.[inv7], 
       vwDailyUpdSlct_HeldReqs_3.[size desc], 
       LTRIM(RTrim([inv10])) AS [Itm], 
       vwDailyUpdSlct_HeldReqs_3.[vendor #], 
       vwDailyUpdSlct_HeldReqs_3.[vendor desc], 
       vwDailyUpdSlct_HeldReqs_3.[vendor style #], 
       vwDailyUpdSlct_HeldReqs_3.[cost], 
       vwDailyUpdSlct_HeldReqs_3.[cost], 
       vwDailyUpdSlct_HeldReqs_3.[oo units], 
       0              AS [CXL UNITS], 
       vwDailyUpdSlct_HeldReqs_3.[oo units], 
       vwDailyUpdSlct_HeldReqs_3.[oo cost $], 
       0             AS [RECEIVED UNITS], 
       0             AS [RECEIVED COST], 
       vwDailyUpdSlct_HeldReqs_3.[fiscal week], 
       vwDailyUpdSlct_HeldReqs_3.[fiscal month #], 
       vwDailyUpdSlct_HeldReqs_3.[fiscal month], 
       vwDailyUpdSlct_HeldReqs_3.[fiscal year], 
       vwDailyUpdSlct_HeldReqs_3.[catalog desc], 
       0             AS DISCOUNTS 
FROM   vwDailyUpdSlct_HeldReqs_3; 
END
GO
