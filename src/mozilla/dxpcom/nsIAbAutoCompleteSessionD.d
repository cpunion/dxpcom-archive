/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbAutoCompleteSession.idl
 */

module mozilla.dxpcom.nsIAbAutoCompleteSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbAutoCompleteSession;


public import mozilla.dxpcom.nsIAbAutoCompleteSessionD;

public import mozilla.xpcom.nsIAutoCompleteSession;
public import mozilla.dxpcom.nsIAutoCompleteSessionD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;


/* starting wrapper class:    nsIAbAutoCompleteSession */
class nsIAbAutoCompleteSessionD : public nsIAutoCompleteSessionD {

  static const nsIID IID = NS_IABAUTOCOMPLETESESSION_IID;


  alias nsIAbAutoCompleteSession InnerType;

  this(nsIAbAutoCompleteSession intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbAutoCompleteSession opCast() {
    return inner;
  }

  void opAssign(nsIAbAutoCompleteSession value) {
    inner = value;
  }

  /* attribute wstring defaultDomain; */
  PRUnichar* DefaultDomain(){
    PRUnichar* value;
    nsresult __result = inner.GetDefaultDomain(&value);
    CheckException(__result);
    return value;
  }
  void DefaultDomain(PRUnichar* aDefaultDomain){
    nsresult __result = inner.SetDefaultDomain(aDefaultDomain);
    CheckException(__result);
  }

private:
  nsIAbAutoCompleteSession inner;

}

