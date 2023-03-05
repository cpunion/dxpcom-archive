/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFPrivate.idl
 */

module mozilla.dxpcom.nsIXTFPrivateD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFPrivate;


public import mozilla.dxpcom.nsIXTFPrivateD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIXTFPrivate */
class nsIXTFPrivateD : public nsISupportsD {

  static const nsIID IID = NS_IXTFPRIVATE_IID;


  alias nsIXTFPrivate InnerType;

  this(nsIXTFPrivate intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFPrivate opCast() {
    return inner;
  }

  void opAssign(nsIXTFPrivate value) {
    inner = value;
  }

  /* readonly attribute nsISupports inner; */
  nsISupportsD  Inner(){
    nsISupports value;
    nsresult __result = inner.GetInner(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

private:
  nsIXTFPrivate inner;

}

