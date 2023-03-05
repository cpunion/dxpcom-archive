/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontPackageHandler.idl
 */

module mozilla.dxpcom.nsIFontPackageHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFontPackageHandler;


public import mozilla.dxpcom.nsIFontPackageHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIFontPackageHandler */
class nsIFontPackageHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IFONTPACKAGEHANDLER_IID;


  alias nsIFontPackageHandler InnerType;

  this(nsIFontPackageHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIFontPackageHandler opCast() {
    return inner;
  }

  void opAssign(nsIFontPackageHandler value) {
    inner = value;
  }

  /**
    * Set the font package handler for Gecko
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
    * After the installation, the font package handler should call
    * nsIFontPackageService::FontPackageHandled and pass back the aFontPackID
    * 
    * This interface sould be implemented by the embedding application
    * In the other hand the nsIFontPackageProxy is internal to Gecko
    */
  /* void NeedFontPackage (in string aFontPackID); */
  void NeedFontPackage(char*aFontPackID){
    nsresult __result = inner.NeedFontPackage(aFontPackID);
    CheckException(__result);
  }

private:
  nsIFontPackageHandler inner;

}

