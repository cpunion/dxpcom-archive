/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupports.idl
 */

module mozilla.dxpcom.nsISupportsD;

import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISupports;


import mozilla.dxpcom.nsISupportsD;

import mozilla.xpcom.nsrootidl;
import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsISupports */
class nsISupportsD {

  static const nsIID IID = NS_ISUPPORTS_IID;
  alias nsISupports InnerType;

  this(nsISupports intr){
    this.inner = intr;
  }

  ~this(){
	Release();
  }

  nsISupports opCast() {
    return inner;
  }

  void opAssign(nsISupports value) {
    inner = value;
  }

  /* void QueryInterface (in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  void QueryInterface(nsIID * uuid, void * *result){
    nsresult __result = inner.QueryInterface(uuid, result);
    CheckException(__result);
  }

  /* [noscript, notxpcom] nsrefcnt AddRef (); */
  nsrefcnt AddRef(){
    return inner.AddRef();
  }

  /* [noscript, notxpcom] nsrefcnt Release (); */
  nsrefcnt Release(){
    return inner.Release();
  }

private:
  nsISupports inner;

}

