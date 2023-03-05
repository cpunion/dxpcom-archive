/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBaseFontElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLBaseFontElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLBaseFontElement;


public import mozilla.dxpcom.nsIDOMHTMLBaseFontElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLBaseFontElement */
/**
 * The nsIDOMHTMLBaseFontElement interface is the interface to a
 * [X]HTML basefont element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLBaseFontElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLBASEFONTELEMENT_IID;


  alias nsIDOMHTMLBaseFontElement InnerType;

  this(nsIDOMHTMLBaseFontElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLBaseFontElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLBaseFontElement value) {
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

  /* attribute DOMString face; */
  wchar[] Face(){
    scope auto value = new AString();
    nsresult __result = inner.GetFace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Face(wchar[] aFace){
    scope auto value = new AString(aFace);
    nsresult __result = inner.SetFace(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long size; */
  PRInt32 Size(){
    PRInt32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRInt32 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

private:
  nsIDOMHTMLBaseFontElement inner;

}

