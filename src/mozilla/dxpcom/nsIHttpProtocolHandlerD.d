/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpProtocolHandler.idl
 */

module mozilla.dxpcom.nsIHttpProtocolHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHttpProtocolHandler;


public import mozilla.dxpcom.nsIHttpProtocolHandlerD;

public import mozilla.xpcom.nsIProxiedProtocolHandler;
public import mozilla.dxpcom.nsIProxiedProtocolHandlerD;


/* starting wrapper class:    nsIHttpProtocolHandler */
class nsIHttpProtocolHandlerD : public nsIProxiedProtocolHandlerD {

  static const nsIID IID = NS_IHTTPPROTOCOLHANDLER_IID;


  alias nsIHttpProtocolHandler InnerType;

  this(nsIHttpProtocolHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIHttpProtocolHandler opCast() {
    return inner;
  }

  void opAssign(nsIHttpProtocolHandler value) {
    inner = value;
  }

  /**
     * Get the HTTP advertised user agent string.
     */
  /* readonly attribute ACString userAgent; */
  char[] UserAgent(){
    scope auto value = new ACString();
    nsresult __result = inner.GetUserAgent(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Get the application name.
	 *
     * @return The name of this application (eg. "Mozilla").
     */
  /* readonly attribute ACString appName; */
  char[] AppName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetAppName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Get the application version string.
     *
     * @return The complete version (major and minor) string. (eg. "5.0")
     */
  /* readonly attribute ACString appVersion; */
  char[] AppVersion(){
    scope auto value = new ACString();
    nsresult __result = inner.GetAppVersion(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * @return The vendor name.
     */
  /* attribute ACString vendor; */
  char[] Vendor(){
    scope auto value = new ACString();
    nsresult __result = inner.GetVendor(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Vendor(char[] aVendor){
    scope auto value = new ACString(aVendor);
    nsresult __result = inner.SetVendor(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * @return The vendor sub string.
     */
  /* attribute ACString vendorSub; */
  char[] VendorSub(){
    scope auto value = new ACString();
    nsresult __result = inner.GetVendorSub(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void VendorSub(char[] aVendorSub){
    scope auto value = new ACString(aVendorSub);
    nsresult __result = inner.SetVendorSub(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * @return The vendor comment.
     */
  /* attribute ACString vendorComment; */
  char[] VendorComment(){
    scope auto value = new ACString();
    nsresult __result = inner.GetVendorComment(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void VendorComment(char[] aVendorComment){
    scope auto value = new ACString(aVendorComment);
    nsresult __result = inner.SetVendorComment(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * @return The product name.
     */
  /* attribute ACString product; */
  char[] Product(){
    scope auto value = new ACString();
    nsresult __result = inner.GetProduct(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Product(char[] aProduct){
    scope auto value = new ACString(aProduct);
    nsresult __result = inner.SetProduct(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * @return A product sub string.
     */
  /* attribute ACString productSub; */
  char[] ProductSub(){
    scope auto value = new ACString();
    nsresult __result = inner.GetProductSub(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ProductSub(char[] aProductSub){
    scope auto value = new ACString(aProductSub);
    nsresult __result = inner.SetProductSub(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * @return A product comment.
     */
  /* attribute ACString productComment; */
  char[] ProductComment(){
    scope auto value = new ACString();
    nsresult __result = inner.GetProductComment(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ProductComment(char[] aProductComment){
    scope auto value = new ACString(aProductComment);
    nsresult __result = inner.SetProductComment(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Get the current platform.
     *
     * @return The platform this application is running on
     *		   (eg. "Windows", "Macintosh", "X11")
     */
  /* readonly attribute ACString platform; */
  char[] Platform(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPlatform(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Get the current oscpu.
     *
     * @return The oscpu this application is running on
     */
  /* readonly attribute ACString oscpu; */
  char[] Oscpu(){
    scope auto value = new ACString();
    nsresult __result = inner.GetOscpu(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Get the translation of the application. The value for language
     * is usually a 2-letter code such as "en" and occasionally a 
     * five-character code to indicate a language subtype, such as "zh_CN". 
     */
  /* attribute ACString language; */
  char[] Language(){
    scope auto value = new ACString();
    nsresult __result = inner.GetLanguage(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Language(char[] aLanguage){
    scope auto value = new ACString(aLanguage);
    nsresult __result = inner.SetLanguage(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Get/Set the application comment misc portion.
     */
  /* attribute ACString misc; */
  char[] Misc(){
    scope auto value = new ACString();
    nsresult __result = inner.GetMisc(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Misc(char[] aMisc){
    scope auto value = new ACString(aMisc);
    nsresult __result = inner.SetMisc(cast(nsACString*)value);
    CheckException(__result);
  }

private:
  nsIHttpProtocolHandler inner;

}

