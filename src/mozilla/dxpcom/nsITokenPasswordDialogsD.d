/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITokenPasswordDialogs.idl
 */

module mozilla.dxpcom.nsITokenPasswordDialogsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITokenPasswordDialogs;


public import mozilla.dxpcom.nsITokenPasswordDialogsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsITokenPasswordDialogs */
/**
 * nsITokenPasswordDialogs
 *  This is the interface for setting and changing password
 *  on a PKCS11 token.
 */
class nsITokenPasswordDialogsD : public nsISupportsD {

  static const nsIID IID = NS_ITOKENPASSWORDDIALOGS_IID;


  alias nsITokenPasswordDialogs InnerType;

  this(nsITokenPasswordDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsITokenPasswordDialogs opCast() {
    return inner;
  }

  void opAssign(nsITokenPasswordDialogs value) {
    inner = value;
  }

  /**
   * setPassword - sets the password/PIN on the named token.
   *   The canceled output value should be set to TRUE when
   *   the user (or implementation) cancels the operation.
   */
  /* void setPassword (in nsIInterfaceRequestor ctx, in wstring tokenName, out boolean canceled); */
  void SetPassword(nsIInterfaceRequestorD ctx, PRUnichar*tokenName, out PRBool canceled){
    nsresult __result = inner.SetPassword(ctx ? cast(nsIInterfaceRequestor)ctx : null, tokenName, &canceled);
    CheckException(__result);
  }

  /* void getPassword (in nsIInterfaceRequestor ctx, in wstring tokenName, out wstring password, out boolean canceled); */
  void GetPassword(nsIInterfaceRequestorD ctx, PRUnichar*tokenName, out PRUnichar*password, out PRBool canceled){
    nsresult __result = inner.GetPassword(ctx ? cast(nsIInterfaceRequestor)ctx : null, tokenName, &password, &canceled);
    CheckException(__result);
  }

private:
  nsITokenPasswordDialogs inner;

}

