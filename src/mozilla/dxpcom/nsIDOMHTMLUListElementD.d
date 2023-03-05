/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLUListElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLUListElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLUListElement;


public import mozilla.dxpcom.nsIDOMHTMLUListElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLUListElement */
/**
 * The nsIDOMHTMLUListElement interface is the interface to a [X]HTML
 * ul element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLUListElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLULISTELEMENT_IID;


  alias nsIDOMHTMLUListElement InnerType;

  this(nsIDOMHTMLUListElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLUListElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLUListElement value) {
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

  /* attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLUListElement inner;

}

