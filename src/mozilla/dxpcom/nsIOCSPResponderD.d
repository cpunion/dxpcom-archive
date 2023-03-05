/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIOCSPResponder.idl
 */

module mozilla.dxpcom.nsIOCSPResponderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIOCSPResponder;


public import mozilla.dxpcom.nsIOCSPResponderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIOCSPResponder */
class nsIOCSPResponderD : public nsISupportsD {

  static const nsIID IID = NS_IOCSPRESPONDER_IID;


  alias nsIOCSPResponder InnerType;

  this(nsIOCSPResponder intr){
    super(intr);
    this.inner = intr;
  }

  nsIOCSPResponder opCast() {
    return inner;
  }

  void opAssign(nsIOCSPResponder value) {
    inner = value;
  }

  /* readonly attribute wstring responseSigner; */
  PRUnichar* ResponseSigner(){
    PRUnichar* value;
    nsresult __result = inner.GetResponseSigner(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring serviceURL; */
  PRUnichar* ServiceURL(){
    PRUnichar* value;
    nsresult __result = inner.GetServiceURL(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIOCSPResponder inner;

}

