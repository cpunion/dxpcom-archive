/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIResProtocolHandler.idl
 */

module mozilla.dxpcom.nsIResProtocolHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIResProtocolHandler;


public import mozilla.dxpcom.nsIResProtocolHandlerD;

public import mozilla.xpcom.nsIProtocolHandler;
public import mozilla.dxpcom.nsIProtocolHandlerD;


/* starting wrapper class:    nsIResProtocolHandler */
/**
 * Protocol handler interface for the resource:// protocol
 */
class nsIResProtocolHandlerD : public nsIProtocolHandlerD {

  static const nsIID IID = NS_IRESPROTOCOLHANDLER_IID;


  alias nsIResProtocolHandler InnerType;

  this(nsIResProtocolHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIResProtocolHandler opCast() {
    return inner;
  }

  void opAssign(nsIResProtocolHandler value) {
    inner = value;
  }

  /**
     * Sets the substitution for the root key:
     *   resource://root/path ==> baseURI.resolve(path)
     *
     * A null baseURI removes the specified substitution.
     *
     * A root key should always be lowercase; however, this may not be
     * enforced.
     */
  /* void setSubstitution (in ACString root, in nsIURI baseURI); */
  void SetSubstitution(char[] root, nsIURID baseURI){
    scope auto _root = new ACString(root);
    nsresult __result = inner.SetSubstitution(cast(nsACString*)_root, baseURI ? cast(nsIURI)baseURI : null);
    CheckException(__result);
  }

  /**
     * Gets the substitution for the root key.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if none exists.
     */
  /* nsIURI getSubstitution (in ACString root); */
  nsIURID  GetSubstitution(char[] root){
    scope auto _root = new ACString(root);
    nsIURI _retval;
    nsresult __result = inner.GetSubstitution(cast(nsACString*)_root, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
     * Returns TRUE if the substitution exists and FALSE otherwise.
     */
  /* boolean hasSubstitution (in ACString root); */
  PRBool HasSubstitution(char[] root){
    scope auto _root = new ACString(root);
    PRBool _retval;
    nsresult __result = inner.HasSubstitution(cast(nsACString*)_root, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Utility function to resolve a resource URI.  A resolved URI is not 
     * guaranteed to reference a resource that exists (ie. opening a channel to
     * the resolved URI may fail).
     *
     * @throws NS_ERROR_NOT_AVAILABLE if resURI.host() is an unknown root key.
     */
  /* AUTF8String resolveURI (in nsIURI resURI); */
  char[] ResolveURI(nsIURID resURI){
    scope auto _retval = new ACString;
    nsresult __result = inner.ResolveURI(resURI ? cast(nsIURI)resURI : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIResProtocolHandler inner;

}

