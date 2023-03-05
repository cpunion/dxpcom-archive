/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbAutoCompleteListener.idl
 */

module mozilla.dxpcom.nsIAbAutoCompleteListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbAutoCompleteListener;


public import mozilla.dxpcom.nsIAbAutoCompleteListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIAbAutoCompleteListener */
class nsIAbAutoCompleteListenerD : public nsISupportsD {

  static const nsIID IID = NS_IABAUTOCOMPLETELISTENER_IID;


  alias nsIAbAutoCompleteListener InnerType;

  this(nsIAbAutoCompleteListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbAutoCompleteListener opCast() {
    return inner;
  }

  void opAssign(nsIAbAutoCompleteListener value) {
    inner = value;
  }

  /* void onAutoCompleteResult (in nsISupports aParam, in wstring aOriginalString, in wstring aMatch); */
  void OnAutoCompleteResult(nsISupportsD aParam, PRUnichar*aOriginalString, PRUnichar*aMatch){
    nsresult __result = inner.OnAutoCompleteResult(aParam ? cast(nsISupports)aParam : null, aOriginalString, aMatch);
    CheckException(__result);
  }

private:
  nsIAbAutoCompleteListener inner;

}

