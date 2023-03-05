/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebServiceErrorHandler.idl
 */

module mozilla.dxpcom.nsIWebServiceErrorHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebServiceErrorHandler;


public import mozilla.dxpcom.nsIWebServiceErrorHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIWebServiceErrorHandler */
class nsIWebServiceErrorHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSERVICEERRORHANDLER_IID;


  alias nsIWebServiceErrorHandler InnerType;

  this(nsIWebServiceErrorHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServiceErrorHandler opCast() {
    return inner;
  }

  void opAssign(nsIWebServiceErrorHandler value) {
    inner = value;
  }

  /* void onError (in nsresult status, in AString statusMessage); */
  void OnError(nsresult status, wchar[] statusMessage){
    scope auto _statusMessage = new AString(statusMessage);
    nsresult __result = inner.OnError(status, cast(nsAString*)_statusMessage);
    CheckException(__result);
  }

private:
  nsIWebServiceErrorHandler inner;

}

