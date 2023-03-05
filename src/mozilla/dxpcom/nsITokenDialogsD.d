/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITokenDialogs.idl
 */

module mozilla.dxpcom.nsITokenDialogsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITokenDialogs;


public import mozilla.dxpcom.nsITokenDialogsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsITokenDialogs */
class nsITokenDialogsD : public nsISupportsD {

  static const nsIID IID = NS_ITOKENDIALOGS_IID;


  alias nsITokenDialogs InnerType;

  this(nsITokenDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsITokenDialogs opCast() {
    return inner;
  }

  void opAssign(nsITokenDialogs value) {
    inner = value;
  }

  /* void ChooseToken (in nsIInterfaceRequestor ctx, [array, size_is (count)] in wstring tokenNameList, in unsigned long count, out wstring tokenName, out boolean canceled); */
  void ChooseToken(nsIInterfaceRequestorD ctx, PRUnichar**tokenNameList, PRUint32 count, out PRUnichar*tokenName, out PRBool canceled){
    nsresult __result = inner.ChooseToken(ctx ? cast(nsIInterfaceRequestor)ctx : null, tokenNameList, count, &tokenName, &canceled);
    CheckException(__result);
  }

private:
  nsITokenDialogs inner;

}

