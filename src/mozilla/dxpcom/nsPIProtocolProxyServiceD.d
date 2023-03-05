/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIProtocolProxyService.idl
 */

module mozilla.dxpcom.nsPIProtocolProxyServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIProtocolProxyService;


public import mozilla.dxpcom.nsPIProtocolProxyServiceD;

public import mozilla.xpcom.nsIProtocolProxyService;
public import mozilla.dxpcom.nsIProtocolProxyServiceD;


/* starting wrapper class:    nsPIProtocolProxyService */
/**
 * THIS IS A PRIVATE INTERFACE
 *
 * It exists purely as a hack to support the configureFromPAC method used by
 * the preference panels in the various apps.  Those apps need to be taught to
 * just use the preferences API to "reload" the PAC file.  Then, at that point,
 * we can eliminate this interface completely.
 */
class nsPIProtocolProxyServiceD : public nsIProtocolProxyServiceD {

  static const nsIID IID = NS_PIPROTOCOLPROXYSERVICE_IID;


  alias nsPIProtocolProxyService InnerType;

  this(nsPIProtocolProxyService intr){
    super(intr);
    this.inner = intr;
  }

  nsPIProtocolProxyService opCast() {
    return inner;
  }

  void opAssign(nsPIProtocolProxyService value) {
    inner = value;
  }

  /**
     * This method may be called to re-configure proxy settings given a URI
     * to a new proxy auto config file.  This method may return before the
     * configuration actually takes affect (i.e., the URI may be loaded
     * asynchronously).
     *
     * WARNING: This method is considered harmful since it may cause the PAC
     * preferences to be out of sync with the state of the Protocol Proxy
     * Service.  This method is going to be eliminated in the near future.
     *
     * @param aURI
     *        The location of the PAC file to load.  If this value is empty,
     *        then the PAC configuration will be removed.
     */
  /* void configureFromPAC (in AUTF8String aURI); */
  void ConfigureFromPAC(char[] aURI){
    scope auto _aURI = new ACString(aURI);
    nsresult __result = inner.ConfigureFromPAC(cast(nsACString*)_aURI);
    CheckException(__result);
  }

private:
  nsPIProtocolProxyService inner;

}

