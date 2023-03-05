/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITestProxy.idl
 */

module mozilla.dxpcom.nsITestProxyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITestProxy;


public import mozilla.dxpcom.nsITestProxyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITestProxy */
class nsITestProxyD : public nsISupportsD {

  static const nsIID IID = NS_ITESTPROXY_IID;


  alias nsITestProxy InnerType;

  this(nsITestProxy intr){
    super(intr);
    this.inner = intr;
  }

  nsITestProxy opCast() {
    return inner;
  }

  void opAssign(nsITestProxy value) {
    inner = value;
  }

  /* long Test (in long p1, in long p2); */
  PRInt32 Test(PRInt32 p1, PRInt32 p2){
    PRInt32 _retval;
    nsresult __result = inner.Test(p1, p2, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void Test2 (); */
  void Test2(){
    nsresult __result = inner.Test2();
    CheckException(__result);
  }

  /* void Test3 (in nsISupports p1, out nsISupports p2); */
  void Test3(nsISupportsD p1, out nsISupportsD p2){
    nsISupports _p2;
    nsresult __result = inner.Test3(p1 ? cast(nsISupports)p1 : null, &_p2);
    CheckException(__result);
    p2 = _p2 ? new nsISupportsD(_p2) : null;
  }

private:
  nsITestProxy inner;

}

