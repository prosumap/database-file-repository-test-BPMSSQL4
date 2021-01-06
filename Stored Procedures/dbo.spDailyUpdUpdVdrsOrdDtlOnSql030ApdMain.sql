SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE proc [dbo].[spDailyUpdUpdVdrsOrdDtlOnSql030ApdMain]
as
begin
INSERT INTO F21_VDRS_ORDER_DETAIL(COMPANY_ID,
DIVISION_ID,
ORDER_NO,
ORDER_LINE,
OFFER_ID,
OFFER_YEAR,
KEY_CODE,
ORDER_DATE,
ORIG_DIVISION_ID,
ORIG_OFFER_ID,
CALENDAR_SEQ,
PRODUCT_ID,
ORIG_OFFER_YEAR,
DESCRIPTOR1,
DESCRIPTOR2,
DESCRIPTOR3,
SKU,
DEMAND_FROM,
DEMAND_TYPE,
CUSTOMER_SOLD,
CUSTOMER_SHIP,
QUANTITY,
EXT_PRICE,
EXT_COST,
CURRENT_STATUS,
BO_DATE,
CANCEL_DATE,
SHIP_DATE,
CREATED_DATETIME,
LAST_UPDATED_DATETIME,
LAST_UPDATED_BY,
SH_COST,
SH_REVENUE,
SHIP_METHOD,
PAY_METHOD,
CANCEL_QUANTITY,
SHIP_QUANTITY,
TOTAL_CREDIT,
SALESPERSON,
LIST_PRICE,
SHIP_REFERENCE_NO,
SUBSTITUTED_SKU,
CUSTOMER_DECISION,
CUSTOMER_SITE,
CUSTOMER_PAYER,
FUTURE_SHIP_DATE,
UNUSUAL_DEMAND_STATUS,
ALTERNATE_KEY_CODE,
RETURN_DATE,
RETURN_QUANTITY,
RESELLABLE_QUANTITY,
RETURN_CODE,
RETURN_ACTION,
RETURN_SH_COST,
RETURN_SH_REVENUE,
ALTERNATE_TRACKING_ID,
ALTERNATE_TRACKING_ORDER_LINE,
SALES_TAX_REFUND,
RESTOCK_CHARGE,
RETURN_SALESPERSON,
RETURN_TOTAL_CREDIT,
SKU_STATUS,
COST_EA,
STD_PRICE_EA,
STD_COST_EA,
SUB_CATEGORY_ID,
CATEGORY_ID,
DEFAULT_VENDOR_ID,
BUYER,
SCHEDULER,
PRODUCT_ENGINEER,
DROP_SHIP_FLAG,
CLASS_CODE,
USER1,
USER2,
USER3,
USER4,
USER5,
USER6,
USER7,
USER8,
VENDOR_NAME,
CATEGORY_DESC,
SUBCATEGORY_DESC,
SKU_DESCRIPTION,
PRODUCT_DESCRIPTION,
WAREHOUSE_DEMAND,
WAREHOUSE_SHIPPED)
SELECT 
COMPANY_ID,
DIVISION_ID,
ORDER_NO,
ORDER_LINE,
OFFER_ID,
OFFER_YEAR,
KEY_CODE,
ORDER_DATE,
ORIG_DIVISION_ID,
ORIG_OFFER_ID,
CALENDAR_SEQ,
PRODUCT_ID,
ORIG_OFFER_YEAR,
DESCRIPTOR1,
DESCRIPTOR2,
DESCRIPTOR3,
SKU,
DEMAND_FROM,
DEMAND_TYPE,
CUSTOMER_SOLD,
CUSTOMER_SHIP,
QUANTITY,
EXT_PRICE,
EXT_COST,
CURRENT_STATUS,
BO_DATE,
CANCEL_DATE,
SHIP_DATE,
CREATED_DATETIME,
LAST_UPDATED_DATETIME,
LAST_UPDATED_BY,
SH_COST,
SH_REVENUE,
SHIP_METHOD,
PAY_METHOD,
CANCEL_QUANTITY,
SHIP_QUANTITY,
TOTAL_CREDIT,
SALESPERSON,
LIST_PRICE,
SHIP_REFERENCE_NO,
SUBSTITUTED_SKU,
CUSTOMER_DECISION,
CUSTOMER_SITE,
CUSTOMER_PAYER,
FUTURE_SHIP_DATE,
UNUSUAL_DEMAND_STATUS,
ALTERNATE_KEY_CODE,
RETURN_DATE,
RETURN_QUANTITY,
RESELLABLE_QUANTITY,
RETURN_CODE,
RETURN_ACTION,
RETURN_SH_COST,
RETURN_SH_REVENUE,
ALTERNATE_TRACKING_ID,
ALTERNATE_TRACKING_ORDER_LINE,
SALES_TAX_REFUND,
RESTOCK_CHARGE,
RETURN_SALESPERSON,
RETURN_TOTAL_CREDIT,
SKU_STATUS,
COST_EA,
STD_PRICE_EA,
STD_COST_EA,
SUB_CATEGORY_ID,
CATEGORY_ID,
DEFAULT_VENDOR_ID,
BUYER,
SCHEDULER,
PRODUCT_ENGINEER,
DROP_SHIP_FLAG,
CLASS_CODE,
USER1,
USER2,
USER3,
USER4,
USER5,
USER6,
USER7,
USER8,
VENDOR_NAME,
CATEGORY_DESC,
SUBCATEGORY_DESC,
SKU_DESCRIPTION,
PRODUCT_DESCRIPTION,
WAREHOUSE_DEMAND,
WAREHOUSE_SHIPPED
FROM   tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd
end
GO
