/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIReadConfig.idl
 */

module mozilla.dxpcom.nsIReadConfigD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIReadConfig;


public import mozilla.dxpcom.nsIReadConfigD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIReadConfig */
class nsIReadConfigD : public nsISupportsD {

  static const nsIID IID = NS_IREADCONFIG_IID;


  alias nsIReadConfig InnerType;

  this(nsIReadConfig intr){
    super(intr);
    this.inner = intr;
  }

  nsIReadConfig opCast() {
    return inner;
  }

  void opAssign(nsIReadConfig value) {
    inner = value;
  }

private:
  nsIReadConfig inner;

}

