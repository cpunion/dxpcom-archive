/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLDirectoryElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLDirectoryElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLDirectoryElement;


public import mozilla.dxpcom.nsIDOMHTMLDirectoryElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLDirectoryElement */
/**
 * The nsIDOMHTMLDirectoryElement interface is the interface to a
 * [X]HTML dir element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLDirectoryElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLDIRECTORYELEMENT_IID;


  alias nsIDOMHTMLDirectoryElement InnerType;

  this(nsIDOMHTMLDirectoryElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLDirectoryElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLDirectoryElement value) {
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
  nsIDOMHTMLDirectoryElement inner;

}

