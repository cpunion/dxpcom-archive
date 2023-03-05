/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLHRElement.idl
 */

module mozilla.dxpcom.nsIDOMNSHTMLHRElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSHTMLHRElement;


public import mozilla.dxpcom.nsIDOMNSHTMLHRElementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDOMNSHTMLHRElement */
/**
 * The nsIDOMNSHTMLHRElement interface contains extensions to the
 * interface for [X]HTML hr elements, for compatibility with IE.
 */
class nsIDOMNSHTMLHRElementD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSHTMLHRELEMENT_IID;


  alias nsIDOMNSHTMLHRElement InnerType;

  this(nsIDOMNSHTMLHRElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSHTMLHRElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSHTMLHRElement value) {
    inner = value;
  }

  /* attribute DOMString color; */
  wchar[] Color(){
    scope auto value = new AString();
    nsresult __result = inner.GetColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Color(wchar[] aColor){
    scope auto value = new AString(aColor);
    nsresult __result = inner.SetColor(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMNSHTMLHRElement inner;

}

