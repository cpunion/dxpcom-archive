/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRssService.idl
 */

module mozilla.dxpcom.nsIRssServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRssService;


public import mozilla.dxpcom.nsIRssServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIRssService */
class nsIRssServiceD : public nsISupportsD {

  static const nsIID IID = NS_IRSSSERVICE_IID;


  alias nsIRssService InnerType;

  this(nsIRssService intr){
    super(intr);
    this.inner = intr;
  }

  nsIRssService opCast() {
    return inner;
  }

  void opAssign(nsIRssService value) {
    inner = value;
  }

private:
  nsIRssService inner;

}

