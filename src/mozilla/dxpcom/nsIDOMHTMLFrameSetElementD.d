/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFrameSetElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLFrameSetElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLFrameSetElement;


public import mozilla.dxpcom.nsIDOMHTMLFrameSetElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLFrameSetElement */
/**
 * The nsIDOMHTMLFrameSetElement interface is the interface to a
 * [X]HTML frameset element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLFrameSetElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLFRAMESETELEMENT_IID;


  alias nsIDOMHTMLFrameSetElement InnerType;

  this(nsIDOMHTMLFrameSetElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLFrameSetElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLFrameSetElement value) {
    inner = value;
  }

  /* attribute DOMString cols; */
  wchar[] Cols(){
    scope auto value = new AString();
    nsresult __result = inner.GetCols(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Cols(wchar[] aCols){
    scope auto value = new AString(aCols);
    nsresult __result = inner.SetCols(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString rows; */
  wchar[] Rows(){
    scope auto value = new AString();
    nsresult __result = inner.GetRows(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Rows(wchar[] aRows){
    scope auto value = new AString(aRows);
    nsresult __result = inner.SetRows(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLFrameSetElement inner;

}

