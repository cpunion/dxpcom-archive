/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLPreElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLPreElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLPreElement;


public import mozilla.dxpcom.nsIDOMHTMLPreElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLPreElement */
/**
 * The nsIDOMHTMLPreElement interface is the interface to a [X]HTML
 * pre element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLPreElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLPREELEMENT_IID;


  alias nsIDOMHTMLPreElement InnerType;

  this(nsIDOMHTMLPreElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLPreElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLPreElement value) {
    inner = value;
  }

  /* attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }
  void Width(PRInt32 aWidth){
    nsresult __result = inner.SetWidth(aWidth);
    CheckException(__result);
  }

private:
  nsIDOMHTMLPreElement inner;

}

