/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOListElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLOListElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLOListElement;


public import mozilla.dxpcom.nsIDOMHTMLOListElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLOListElement */
/**
 * The nsIDOMHTMLOListElement interface is the interface to a [X]HTML
 * ol element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLOListElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLOLISTELEMENT_IID;


  alias nsIDOMHTMLOListElement InnerType;

  this(nsIDOMHTMLOListElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLOListElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLOListElement value) {
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

  /* attribute long start; */
  PRInt32 Start(){
    PRInt32 value;
    nsresult __result = inner.GetStart(&value);
    CheckException(__result);
    return value;
  }
  void Start(PRInt32 aStart){
    nsresult __result = inner.SetStart(aStart);
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
  nsIDOMHTMLOListElement inner;

}

