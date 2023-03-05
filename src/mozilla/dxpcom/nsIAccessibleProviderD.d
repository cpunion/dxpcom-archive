/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleProvider.idl
 */

module mozilla.dxpcom.nsIAccessibleProviderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleProvider;


public import mozilla.dxpcom.nsIAccessibleProviderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAccessible;
public import mozilla.dxpcom.nsIAccessibleD;


/* starting wrapper class:    nsIAccessibleProvider */
class nsIAccessibleProviderD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEPROVIDER_IID;


  alias nsIAccessibleProvider InnerType;

  this(nsIAccessibleProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleProvider opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleProvider value) {
    inner = value;
  }

  /* readonly attribute nsIAccessible accessible; */
  nsIAccessibleD  Accessible(){
    nsIAccessible value;
    nsresult __result = inner.GetAccessible(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

private:
  nsIAccessibleProvider inner;

}

