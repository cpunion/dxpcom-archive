/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLMenuElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLMenuElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLMenuElement;


public import mozilla.dxpcom.nsIDOMHTMLMenuElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLMenuElement */
/**
 * The nsIDOMHTMLMenuElement interface is the interface to a [X]HTML
 * menu element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLMenuElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLMENUELEMENT_IID;


  alias nsIDOMHTMLMenuElement InnerType;

  this(nsIDOMHTMLMenuElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLMenuElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLMenuElement value) {
    inner = value;
  }

  /* attribute boolean compact; */
  PRBool Compact(){
    PRBool value;
    nsresult __result = inner.GetCompact(&value);
    CheckException(__result);
    return value;
  }
  void Compact(PRBool aCompact){
    nsresult __result = inner.SetCompact(aCompact);
    CheckException(__result);
  }

private:
  nsIDOMHTMLMenuElement inner;

}

