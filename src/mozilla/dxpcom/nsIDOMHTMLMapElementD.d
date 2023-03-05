/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLMapElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLMapElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLMapElement;


public import mozilla.dxpcom.nsIDOMHTMLMapElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLMapElement */
/**
 * The nsIDOMHTMLMapElement interface is the interface to a [X]HTML
 * map element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLMapElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLMAPELEMENT_IID;


  alias nsIDOMHTMLMapElement InnerType;

  this(nsIDOMHTMLMapElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLMapElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLMapElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMHTMLCollection areas; */
  nsIDOMHTMLCollectionD  Areas(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetAreas(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLMapElement inner;

}

