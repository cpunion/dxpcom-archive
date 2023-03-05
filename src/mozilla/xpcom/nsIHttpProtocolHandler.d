/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpProtocolHandler.idl
 */

module mozilla.xpcom.nsIHttpProtocolHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProxiedProtocolHandler;


/* starting interface:    nsIHttpProtocolHandler */
const char[] NS_IHTTPPROTOCOLHANDLER_IID_STR = "122c91c0-2485-40ba-89c9-b895934921bc";

const nsIID NS_IHTTPPROTOCOLHANDLER_IID= 
  {0x122c91c0, 0x2485, 0x40ba, 
    [ 0x89, 0xc9, 0xb8, 0x95, 0x93, 0x49, 0x21, 0xbc ]};

extern(Windows)
interface nsIHttpProtocolHandler : nsIProxiedProtocolHandler {
  static const char[] IID_STR = NS_IHTTPPROTOCOLHANDLER_IID_STR;
  static const nsIID IID = NS_IHTTPPROTOCOLHANDLER_IID;

  /**
     * Get the HTTP advertised user agent string.
     */
  /* readonly attribute ACString userAgent; */
  nsresult GetUserAgent(nsACString * aUserAgent);

  /**
     * Get the application name.
	 *
     * @return The name of this application (eg. "Mozilla").
     */
  /* readonly attribute ACString appName; */
  nsresult GetAppName(nsACString * aAppName);

  /**
     * Get the application version string.
     *
     * @return The complete version (major and minor) string. (eg. "5.0")
     */
  /* readonly attribute ACString appVersion; */
  nsresult GetAppVersion(nsACString * aAppVersion);

  /**
     * @return The vendor name.
     */
  /* attribute ACString vendor; */
  nsresult GetVendor(nsACString * aVendor);
  nsresult SetVendor(nsACString * aVendor);

  /**
     * @return The vendor sub string.
     */
  /* attribute ACString vendorSub; */
  nsresult GetVendorSub(nsACString * aVendorSub);
  nsresult SetVendorSub(nsACString * aVendorSub);

  /**
     * @return The vendor comment.
     */
  /* attribute ACString vendorComment; */
  nsresult GetVendorComment(nsACString * aVendorComment);
  nsresult SetVendorComment(nsACString * aVendorComment);

  /**
     * @return The product name.
     */
  /* attribute ACString product; */
  nsresult GetProduct(nsACString * aProduct);
  nsresult SetProduct(nsACString * aProduct);

  /**
     * @return A product sub string.
     */
  /* attribute ACString productSub; */
  nsresult GetProductSub(nsACString * aProductSub);
  nsresult SetProductSub(nsACString * aProductSub);

  /**
     * @return A product comment.
     */
  /* attribute ACString productComment; */
  nsresult GetProductComment(nsACString * aProductComment);
  nsresult SetProductComment(nsACString * aProductComment);

  /**
     * Get the current platform.
     *
     * @return The platform this application is running on
     *		   (eg. "Windows", "Macintosh", "X11")
     */
  /* readonly attribute ACString platform; */
  nsresult GetPlatform(nsACString * aPlatform);

  /**
     * Get the current oscpu.
     *
     * @return The oscpu this application is running on
     */
  /* readonly attribute ACString oscpu; */
  nsresult GetOscpu(nsACString * aOscpu);

  /**
     * Get the translation of the application. The value for language
     * is usually a 2-letter code such as "en" and occasionally a 
     * five-character code to indicate a language subtype, such as "zh_CN". 
     */
  /* attribute ACString language; */
  nsresult GetLanguage(nsACString * aLanguage);
  nsresult SetLanguage(nsACString * aLanguage);

  /**
     * Get/Set the application comment misc portion.
     */
  /* attribute ACString misc; */
  nsresult GetMisc(nsACString * aMisc);
  nsresult SetMisc(nsACString * aMisc);

}

