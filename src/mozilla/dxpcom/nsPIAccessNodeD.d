/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIAccessNode.idl
 */

module mozilla.dxpcom.nsPIAccessNodeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIAccessNode;


public import mozilla.dxpcom.nsPIAccessNodeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsPIAccessNode */
class nsPIAccessNodeD : public nsISupportsD {

  static const nsIID IID = NS_PIACCESSNODE_IID;


  alias nsPIAccessNode InnerType;

  this(nsPIAccessNode intr){
    super(intr);
    this.inner = intr;
  }

  nsPIAccessNode opCast() {
    return inner;
  }

  void opAssign(nsPIAccessNode value) {
    inner = value;
  }

  /* [noscript] void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /* [noscript] void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

  /* [notxpcom] nsIFrame GetFrame (); */
  nsIFrameD  GetFrame(){
    nsIFrameD  _retval;
    _retval = inner.GetFrame();

    return _retval;
  }

private:
  nsPIAccessNode inner;

}

