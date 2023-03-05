/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgPurgeService.idl
 */

module mozilla.dxpcom.nsIMsgPurgeServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgPurgeService;


public import mozilla.dxpcom.nsIMsgPurgeServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgPurgeService */
class nsIMsgPurgeServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGPURGESERVICE_IID;


  alias nsIMsgPurgeService InnerType;

  this(nsIMsgPurgeService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgPurgeService opCast() {
    return inner;
  }

  void opAssign(nsIMsgPurgeService value) {
    inner = value;
  }

  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /* void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

private:
  nsIMsgPurgeService inner;

}

