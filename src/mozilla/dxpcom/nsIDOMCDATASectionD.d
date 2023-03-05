/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCDATASection.idl
 */

module mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCDATASection;


public import mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.xpcom.nsIDOMText;
public import mozilla.dxpcom.nsIDOMTextD;


/* starting wrapper class:    nsIDOMCDATASection */
class nsIDOMCDATASectionD : public nsIDOMTextD {

  static const nsIID IID = NS_IDOMCDATASECTION_IID;


  alias nsIDOMCDATASection InnerType;

  this(nsIDOMCDATASection intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCDATASection opCast() {
    return inner;
  }

  void opAssign(nsIDOMCDATASection value) {
    inner = value;
  }

private:
  nsIDOMCDATASection inner;

}

