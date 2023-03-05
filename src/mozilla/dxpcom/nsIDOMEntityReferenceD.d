/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMEntityReference.idl
 */

module mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMEntityReference;


public import mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMEntityReference */
class nsIDOMEntityReferenceD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMENTITYREFERENCE_IID;


  alias nsIDOMEntityReference InnerType;

  this(nsIDOMEntityReference intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMEntityReference opCast() {
    return inner;
  }

  void opAssign(nsIDOMEntityReference value) {
    inner = value;
  }

private:
  nsIDOMEntityReference inner;

}

