/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClientAuthDialogs.idl
 */

module mozilla.dxpcom.nsIClientAuthDialogsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClientAuthDialogs;


public import mozilla.dxpcom.nsIClientAuthDialogsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIClientAuthDialogs */
/**
 * nsIClientAuthDialog
 * Provides UI for SSL client-auth dialogs.
 */
class nsIClientAuthDialogsD : public nsISupportsD {

  static const nsIID IID = NS_ICLIENTAUTHDIALOGS_IID;


  alias nsIClientAuthDialogs InnerType;

  this(nsIClientAuthDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsIClientAuthDialogs opCast() {
    return inner;
  }

  void opAssign(nsIClientAuthDialogs value) {
    inner = value;
  }

  /**
   * display
   *   UI shown when a user is asked to do SSL client auth.
   */
  /* void ChooseCertificate (in nsIInterfaceRequestor ctx, in wstring cn, in wstring organization, in wstring issuer, [array, size_is (count)] in wstring certNickList, [array, size_is (count)] in wstring certDetailsList, in unsigned long count, out long selectedIndex, out boolean canceled); */
  void ChooseCertificate(nsIInterfaceRequestorD ctx, PRUnichar*cn, PRUnichar*organization, PRUnichar*issuer, PRUnichar**certNickList, PRUnichar**certDetailsList, PRUint32 count, out PRInt32 selectedIndex, out PRBool canceled){
    nsresult __result = inner.ChooseCertificate(ctx ? cast(nsIInterfaceRequestor)ctx : null, cn, organization, issuer, certNickList, certDetailsList, count, &selectedIndex, &canceled);
    CheckException(__result);
  }

private:
  nsIClientAuthDialogs inner;

}

