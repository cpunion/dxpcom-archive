/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRelatedLinksHandler.idl
 */

module mozilla.dxpcom.nsIRelatedLinksHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRelatedLinksHandler;


public import mozilla.dxpcom.nsIRelatedLinksHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIRelatedLinksHandler */
class nsIRelatedLinksHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IRELATEDLINKSHANDLER_IID;


  alias nsIRelatedLinksHandler InnerType;

  this(nsIRelatedLinksHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIRelatedLinksHandler opCast() {
    return inner;
  }

  void opAssign(nsIRelatedLinksHandler value) {
    inner = value;
  }

  /* attribute string URL; */
  char* URL(){
    char* value;
    nsresult __result = inner.GetURL(&value);
    CheckException(__result);
    return value;
  }
  void URL(char* aURL){
    nsresult __result = inner.SetURL(aURL);
    CheckException(__result);
  }

private:
  nsIRelatedLinksHandler inner;

}

