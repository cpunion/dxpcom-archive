/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketProviderService.idl
 */

module mozilla.dxpcom.nsISocketProviderServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISocketProviderService;


public import mozilla.dxpcom.nsISocketProviderServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISocketProvider;

public import mozilla.dxpcom.nsISocketProviderD;


/* starting wrapper class:    nsISocketProviderService */
/**
 * nsISocketProviderService
 *
 * Provides a mapping between a socket type and its associated socket provider
 * instance.  One could also use the service manager directly.
 */
class nsISocketProviderServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISOCKETPROVIDERSERVICE_IID;


  alias nsISocketProviderService InnerType;

  this(nsISocketProviderService intr){
    super(intr);
    this.inner = intr;
  }

  nsISocketProviderService opCast() {
    return inner;
  }

  void opAssign(nsISocketProviderService value) {
    inner = value;
  }

  /* nsISocketProvider getSocketProvider (in string socketType); */
  nsISocketProviderD  GetSocketProvider(char*socketType){
    nsISocketProvider _retval;
    nsresult __result = inner.GetSocketProvider(socketType, &_retval);
    CheckException(__result);
    return new nsISocketProviderD(_retval);
  }

private:
  nsISocketProviderService inner;

}

