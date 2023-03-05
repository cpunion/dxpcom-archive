/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransportSecurityInfo.idl
 */

module mozilla.dxpcom.nsITransportSecurityInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransportSecurityInfo;


public import mozilla.dxpcom.nsITransportSecurityInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITransportSecurityInfo */
class nsITransportSecurityInfoD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSPORTSECURITYINFO_IID;


  alias nsITransportSecurityInfo InnerType;

  this(nsITransportSecurityInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsITransportSecurityInfo opCast() {
    return inner;
  }

  void opAssign(nsITransportSecurityInfo value) {
    inner = value;
  }

  /* readonly attribute unsigned long securityState; */
  PRUint32 SecurityState(){
    PRUint32 value;
    nsresult __result = inner.GetSecurityState(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring shortSecurityDescription; */
  PRUnichar* ShortSecurityDescription(){
    PRUnichar* value;
    nsresult __result = inner.GetShortSecurityDescription(&value);
    CheckException(__result);
    return value;
  }

private:
  nsITransportSecurityInfo inner;

}

