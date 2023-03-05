/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocumentFragment.idl
 */

module mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMDocumentFragment;


public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMDocumentFragment */
class nsIDOMDocumentFragmentD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMDOCUMENTFRAGMENT_IID;


  alias nsIDOMDocumentFragment InnerType;

  this(nsIDOMDocumentFragment intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMDocumentFragment opCast() {
    return inner;
  }

  void opAssign(nsIDOMDocumentFragment value) {
    inner = value;
  }

private:
  nsIDOMDocumentFragment inner;

}

