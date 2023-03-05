/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMessengerOSIntegration.idl
 */

module mozilla.dxpcom.nsIMessengerOSIntegrationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMessengerOSIntegration;


public import mozilla.dxpcom.nsIMessengerOSIntegrationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMessengerOSIntegration */
class nsIMessengerOSIntegrationD : public nsISupportsD {

  static const nsIID IID = NS_IMESSENGEROSINTEGRATION_IID;


  alias nsIMessengerOSIntegration InnerType;

  this(nsIMessengerOSIntegration intr){
    super(intr);
    this.inner = intr;
  }

  nsIMessengerOSIntegration opCast() {
    return inner;
  }

  void opAssign(nsIMessengerOSIntegration value) {
    inner = value;
  }

private:
  nsIMessengerOSIntegration inner;

}

