/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertPickDialogs.idl
 */

module mozilla.dxpcom.nsICertPickDialogsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICertPickDialogs;


public import mozilla.dxpcom.nsICertPickDialogsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsICertPickDialogs */
/**
 * nsICertPicker
 * Provides generic UI for choosing a certificate
 */
class nsICertPickDialogsD : public nsISupportsD {

  static const nsIID IID = NS_ICERTPICKDIALOGS_IID;


  alias nsICertPickDialogs InnerType;

  this(nsICertPickDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsICertPickDialogs opCast() {
    return inner;
  }

  void opAssign(nsICertPickDialogs value) {
    inner = value;
  }

  /**
   * PickCertificate
   *   General purpose certificate prompter
   */
  /* void PickCertificate (in nsIInterfaceRequestor ctx, [array, size_is (count)] in wstring certNickList, [array, size_is (count)] in wstring certDetailsList, in unsigned long count, inout long selectedIndex, out boolean canceled); */
  void PickCertificate(nsIInterfaceRequestorD ctx, PRUnichar**certNickList, PRUnichar**certDetailsList, PRUint32 count, out PRInt32 selectedIndex, out PRBool canceled){
    nsresult __result = inner.PickCertificate(ctx ? cast(nsIInterfaceRequestor)ctx : null, certNickList, certDetailsList, count, &selectedIndex, &canceled);
    CheckException(__result);
  }

private:
  nsICertPickDialogs inner;

}

