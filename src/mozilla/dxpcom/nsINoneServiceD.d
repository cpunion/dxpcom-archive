/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINoneService.idl
 */

module mozilla.dxpcom.nsINoneServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINoneService;


public import mozilla.dxpcom.nsINoneServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsINoneService */
class nsINoneServiceD : public nsISupportsD {

  static const nsIID IID = NS_INONESERVICE_IID;


  alias nsINoneService InnerType;

  this(nsINoneService intr){
    super(intr);
    this.inner = intr;
  }

  nsINoneService opCast() {
    return inner;
  }

  void opAssign(nsINoneService value) {
    inner = value;
  }

private:
  nsINoneService inner;

}

