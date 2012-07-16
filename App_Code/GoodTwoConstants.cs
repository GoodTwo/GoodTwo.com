using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace goodtooDraft.App_Code
{
    public class GoodTwoConstants
    {
        public const bool testing = false;
        public const bool castleServer = false;
        public const string queryErrorTagName = "ReturnResult";
        public const string productRegionField = "pe.CustomField4";
        public const string productFundField = "pe.CustomField2";
        public const string productSelectAllField = "p.StockStatus";
        public const string orderEmptyField = "o.SalesTaxRate3";
        public const string nationalRegionCode = "US";
        //public const string searchFields = "p.DoNotAllowBackOrders,p.ProductCode,p.ProductID,p.ProductName,pd.ProductDescription,pd.ProductDescriptionShort,pe.CustomField1,pe.CustomField2,pe.CustomField3,pe.CustomField4,pe.Photo_AltText,pe.PhotoURL_Large,pe.Photo_SubText,pe.ProductKeywords,pe.ProductPrice,pe.VAT_Percentage,pe.Vendor_Price,pm.ProductFeatures,pm.TechSpecs";
        public const string searchFields = "*";
        public const string smtpServer = "mail.goodtwo-qa.com";
        public const string fundraiserMailingAddress = "bill@goodtwo.com";
        public const string smtpUserName = "fundraisers@goodtwo.com";
        public const string smtpPassword = "LifeisG00d";
    }
}