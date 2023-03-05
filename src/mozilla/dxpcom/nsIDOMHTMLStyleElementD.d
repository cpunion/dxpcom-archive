/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLStyleElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLStyleElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLStyleElement;


public import mozilla.dxpcom.nsIDOMHTMLStyleElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLStyleElement */
/**
 * The nsIDOMHTMLStyleElement interface is the interface to a [X]HTML
 * style element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLStyleElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLSTYLEELEMENT_IID;


  alias nsIDOMHTMLStyleElement InnerType;

  this(nsIDOMHTMLStyleElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLStyleElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLStyleElement value) {
    inner = value;
  }

  /* attribute boolean disabled; */
  PRBool Disabled(){
    PRBool value;
    nsresult __result = inner.GetDisabled(&value);
    CheckException(__result);
    return value;
  }
  void Disabled(PRBool aDisabled){
    nsresult __result = inner.SetDisabled(aDisabled);
    CheckException(__result);
  }

  /* attribute DOMString media; */
  wchar[] Media(){
    scope auto value = new AString();
    nsresult __result = inner.GetMedia(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Media(wchar[] aMedia){
    scope auto value = new AString(aMedia);
    nsresult __result = inner.SetMedia(cast(nsAString*)value);
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
  nsIDOMHTMLStyleElement inner;

}

