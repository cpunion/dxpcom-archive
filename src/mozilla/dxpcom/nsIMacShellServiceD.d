/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMacShellService.idl
 */

module mozilla.dxpcom.nsIMacShellServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMacShellService;


public import mozilla.dxpcom.nsIMacShellServiceD;

public import mozilla.xpcom.nsIShellService;
public import mozilla.dxpcom.nsIShellServiceD;


/* starting wrapper class:    nsIMacShellService */
class nsIMacShellServiceD : public nsIShellServiceD {

  static const nsIID IID = NS_IMACSHELLSERVICE_IID;


  alias nsIMacShellService InnerType;

  this(nsIMacShellService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMacShellService opCast() {
    return inner;
  }

  void opAssign(nsIMacShellService value) {
    inner = value;
  }

  enum { APPLICATION_KEYCHAIN_ACCESS = 2 }

  enum { APPLICATION_NETWORK = 3 }

  enum { APPLICATION_DESKTOP = 4 }

private:
  nsIMacShellService inner;

}

