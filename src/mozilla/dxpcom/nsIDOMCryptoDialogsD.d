/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCryptoDialogs.idl
 */

module mozilla.dxpcom.nsIDOMCryptoDialogsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCryptoDialogs;


public import mozilla.dxpcom.nsIDOMCryptoDialogsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsIDOMCryptoDialogs */
class nsIDOMCryptoDialogsD : public nsISupportsD {

  static const nsIID IID = NS_IDOMCRYPTODIALOGS_IID;


  alias nsIDOMCryptoDialogs InnerType;

  this(nsIDOMCryptoDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCryptoDialogs opCast() {
    return inner;
  }

  void opAssign(nsIDOMCryptoDialogs value) {
    inner = value;
  }

  /**
   * This method is used to warn the user the web site is
   * trying to escrow the generated private key.  This 
   * method should return true if the user wants to proceed
   * and false if the user cancels the action.
   */
  /* boolean ConfirmKeyEscrow (in nsIX509Cert escrowAuthority); */
  PRBool ConfirmKeyEscrow(nsIX509CertD escrowAuthority){
    PRBool _retval;
    nsresult __result = inner.ConfirmKeyEscrow(escrowAuthority ? cast(nsIX509Cert)escrowAuthority : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIDOMCryptoDialogs inner;

}

