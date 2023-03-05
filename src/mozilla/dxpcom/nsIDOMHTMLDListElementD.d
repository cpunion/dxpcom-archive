/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLDListElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLDListElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLDListElement;


public import mozilla.dxpcom.nsIDOMHTMLDListElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLDListElement */
/**
 * The nsIDOMHTMLDListElement interface is the interface to a [X]HTML
 * dl element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLDListElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLDLISTELEMENT_IID;


  alias nsIDOMHTMLDListElement InnerType;

  this(nsIDOMHTMLDListElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLDListElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLDListElement value) {
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
  nsIDOMHTMLDListElement inner;

}

