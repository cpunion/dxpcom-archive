/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExternalProtocolHandler.idl
 */

module mozilla.dxpcom.nsIExternalProtocolHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIExternalProtocolHandler;


public import mozilla.dxpcom.nsIExternalProtocolHandlerD;

public import mozilla.xpcom.nsIProtocolHandler;
public import mozilla.dxpcom.nsIProtocolHandlerD;


/* starting wrapper class:    nsIExternalProtocolHandler */
class nsIExternalProtocolHandlerD : public nsIProtocolHandlerD {

  static const nsIID IID = NS_IEXTERNALPROTOCOLHANDLER_IID;


  alias nsIExternalProtocolHandler InnerType;

  this(nsIExternalProtocolHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIExternalProtocolHandler opCast() {
    return inner;
  }

  void opAssign(nsIExternalProtocolHandler value) {
    inner = value;
  }

  /**
     * This method checks if the external handler exists for a given scheme.
     *
     * @param scheme external scheme.
     * @return TRUE if the external handler exists for the input scheme, FALSE otherwise.
     */
  /* boolean externalAppExistsForScheme (in ACString scheme); */
  PRBool ExternalAppExistsForScheme(char[] scheme){
    scope auto _scheme = new ACString(scheme);
    PRBool _retval;
    nsresult __result = inner.ExternalAppExistsForScheme(cast(nsACString*)_scheme, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIExternalProtocolHandler inner;

}

