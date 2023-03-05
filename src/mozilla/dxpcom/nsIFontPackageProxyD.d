/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontPackageProxy.idl
 */

module mozilla.dxpcom.nsIFontPackageProxyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFontPackageProxy;


public import mozilla.dxpcom.nsIFontPackageProxyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIFontPackageProxy */
class nsIFontPackageProxyD : public nsISupportsD {

  static const nsIID IID = NS_IFONTPACKAGEPROXY_IID;


  alias nsIFontPackageProxy InnerType;

  this(nsIFontPackageProxy intr){
    super(intr);
    this.inner = intr;
  }

  nsIFontPackageProxy opCast() {
    return inner;
  }

  void opAssign(nsIFontPackageProxy value) {
    inner = value;
  }

  /**
    * Request a font package. The proxy will call font package 
    * handler to download the font package
    * @param aFontPackID a font package ID.
    * The id have the following naming convenation 
    *  name_space:name
    * we currently define one name space
    *    lang - a font package for a particular language group
    * and udnder the lang name space, we use the language code to identify
    * the package, below are the defined packages
    *   ja - Japanese font package ("lang:ja")
    *   ko - Korean font package ("lang:ko")
    *   zh-TW - Traditional Chinese font package ("lang:zh-TW")
    *   zh-CN - Simplified Chinese font package ("lang:zh-CN")
    * In the future, we may want to add
    *    ar - Arabic font packges ("lang:ar")
    *    he - Hebrew font packages ("lang:he")
    *    th - Thai font package ("lang:th")
    * other name space are reserved for now.
    *
    * This interface is implemented by Gecko for internal purpose
    * It is a service and are different from nsIFontPackageHandler although
    * the method signature is the same. 
    * Embedding application should not see this interface.
    */
  /* void NeedFontPackage (in string aFontPackID); */
  void NeedFontPackage(char*aFontPackID){
    nsresult __result = inner.NeedFontPackage(aFontPackID);
    CheckException(__result);
  }

private:
  nsIFontPackageProxy inner;

}

