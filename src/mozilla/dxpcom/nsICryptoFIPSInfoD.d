/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICryptoFIPSInfo.idl
 */

module mozilla.dxpcom.nsICryptoFIPSInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICryptoFIPSInfo;


public import mozilla.dxpcom.nsICryptoFIPSInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICryptoFIPSInfo */
class nsICryptoFIPSInfoD : public nsISupportsD {

  static const nsIID IID = NS_ICRYPTOFIPSINFO_IID;


  alias nsICryptoFIPSInfo InnerType;

  this(nsICryptoFIPSInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsICryptoFIPSInfo opCast() {
    return inner;
  }

  void opAssign(nsICryptoFIPSInfo value) {
    inner = value;
  }

  /* readonly attribute boolean isFIPSModeActive; */
  PRBool IsFIPSModeActive(){
    PRBool value;
    nsresult __result = inner.GetIsFIPSModeActive(&value);
    CheckException(__result);
    return value;
  }

private:
  nsICryptoFIPSInfo inner;

}

