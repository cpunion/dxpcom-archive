/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPISocketTransportService.idl
 */

module mozilla.dxpcom.nsPISocketTransportServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPISocketTransportService;


public import mozilla.dxpcom.nsPISocketTransportServiceD;

public import mozilla.xpcom.nsISocketTransportService;
public import mozilla.dxpcom.nsISocketTransportServiceD;


/* starting wrapper class:    nsPISocketTransportService */
/**
 * This is a private interface used by the internals of the networking library.
 * It will never be frozen.  Do not use it in external code.
 */
class nsPISocketTransportServiceD : public nsISocketTransportServiceD {

  static const nsIID IID = NS_PISOCKETTRANSPORTSERVICE_IID;


  alias nsPISocketTransportService InnerType;

  this(nsPISocketTransportService intr){
    super(intr);
    this.inner = intr;
  }

  nsPISocketTransportService opCast() {
    return inner;
  }

  void opAssign(nsPISocketTransportService value) {
    inner = value;
  }

  /**
   * init/shutdown routines.
   */
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

  /**
   * controls whether or not the socket transport service should poke
   * the autodialer on connection failure.
   */
  /* attribute boolean autodialEnabled; */
  PRBool AutodialEnabled(){
    PRBool value;
    nsresult __result = inner.GetAutodialEnabled(&value);
    CheckException(__result);
    return value;
  }
  void AutodialEnabled(PRBool aAutodialEnabled){
    nsresult __result = inner.SetAutodialEnabled(aAutodialEnabled);
    CheckException(__result);
  }

private:
  nsPISocketTransportService inner;

}

