/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIDNSService.idl
 */

module mozilla.dxpcom.nsPIDNSServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIDNSService;


public import mozilla.dxpcom.nsPIDNSServiceD;

public import mozilla.xpcom.nsIDNSService;
public import mozilla.dxpcom.nsIDNSServiceD;


/* starting wrapper class:    nsPIDNSService */
/**
 * This is a private interface used by the internals of the networking library.
 * It will never be frozen.  Do not use it in external code.
 */
class nsPIDNSServiceD : public nsIDNSServiceD {

  static const nsIID IID = NS_PIDNSSERVICE_IID;


  alias nsPIDNSService InnerType;

  this(nsPIDNSService intr){
    super(intr);
    this.inner = intr;
  }

  nsPIDNSService opCast() {
    return inner;
  }

  void opAssign(nsPIDNSService value) {
    inner = value;
  }

  /**
     * called to initialize the DNS service.
     */
  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /**
     * called to shutdown the DNS service.  any pending asynchronous
     * requests will be canceled, and the local cache of DNS records
     * will be cleared.  NOTE: the operating system may still have
     * its own cache of DNS records, which would be unaffected by
     * this method.
     */
  /* void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

private:
  nsPIDNSService inner;

}

