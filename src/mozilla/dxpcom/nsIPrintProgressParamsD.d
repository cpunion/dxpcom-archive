/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintProgressParams.idl
 */

module mozilla.dxpcom.nsIPrintProgressParamsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintProgressParams;


public import mozilla.dxpcom.nsIPrintProgressParamsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPrintProgressParams */
class nsIPrintProgressParamsD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTPROGRESSPARAMS_IID;


  alias nsIPrintProgressParams InnerType;

  this(nsIPrintProgressParams intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintProgressParams opCast() {
    return inner;
  }

  void opAssign(nsIPrintProgressParams value) {
    inner = value;
  }

  /* attribute wstring docTitle; */
  PRUnichar* DocTitle(){
    PRUnichar* value;
    nsresult __result = inner.GetDocTitle(&value);
    CheckException(__result);
    return value;
  }
  void DocTitle(PRUnichar* aDocTitle){
    nsresult __result = inner.SetDocTitle(aDocTitle);
    CheckException(__result);
  }

  /* attribute wstring docURL; */
  PRUnichar* DocURL(){
    PRUnichar* value;
    nsresult __result = inner.GetDocURL(&value);
    CheckException(__result);
    return value;
  }
  void DocURL(PRUnichar* aDocURL){
    nsresult __result = inner.SetDocURL(aDocURL);
    CheckException(__result);
  }

private:
  nsIPrintProgressParams inner;

}

