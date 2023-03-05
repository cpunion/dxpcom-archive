/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontPackageService.idl
 */

module mozilla.dxpcom.nsIFontPackageServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFontPackageService;


public import mozilla.dxpcom.nsIFontPackageServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFontPackageHandler;

public import mozilla.dxpcom.nsIFontPackageHandlerD;


/* starting wrapper class:    nsIFontPackageService */
class nsIFontPackageServiceD : public nsISupportsD {

  static const nsIID IID = NS_IFONTPACKAGESERVICE_IID;


  alias nsIFontPackageService InnerType;

  this(nsIFontPackageService intr){
    super(intr);
    this.inner = intr;
  }

  nsIFontPackageService opCast() {
    return inner;
  }

  void opAssign(nsIFontPackageService value) {
    inner = value;
  }

  /* void SetHandler (in nsIFontPackageHandler aHandler); */
  void SetHandler(nsIFontPackageHandlerD aHandler){
    nsresult __result = inner.SetHandler(aHandler ? cast(nsIFontPackageHandler)aHandler : null);
    CheckException(__result);
  }

  /* void FontPackageHandled (in boolean aSuccess, in boolean aRedrawPages, in string aFontPackID); */
  void FontPackageHandled(PRBool aSuccess, PRBool aRedrawPages, char*aFontPackID){
    nsresult __result = inner.FontPackageHandled(aSuccess, aRedrawPages, aFontPackID);
    CheckException(__result);
  }

private:
  nsIFontPackageService inner;

}

