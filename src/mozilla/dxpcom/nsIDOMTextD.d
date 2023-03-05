/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMText.idl
 */

module mozilla.dxpcom.nsIDOMTextD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMText;


public import mozilla.dxpcom.nsIDOMTextD;

public import mozilla.xpcom.nsIDOMCharacterData;
public import mozilla.dxpcom.nsIDOMCharacterDataD;


/* starting wrapper class:    nsIDOMText */
class nsIDOMTextD : public nsIDOMCharacterDataD {

  static const nsIID IID = NS_IDOMTEXT_IID;


  alias nsIDOMText InnerType;

  this(nsIDOMText intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMText opCast() {
    return inner;
  }

  void opAssign(nsIDOMText value) {
    inner = value;
  }

  /**
 * The nsIDOMText interface inherits from nsIDOMCharacterData and represents 
 * the textual content (termed character data in XML) of an Element or Attr.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* nsIDOMText splitText (in unsigned long offset)  raises (DOMException); */
  nsIDOMTextD  SplitText(PRUint32 offset){
    nsIDOMText _retval;
    nsresult __result = inner.SplitText(offset, &_retval);
    CheckException(__result);
    return new nsIDOMTextD(_retval);
  }

private:
  nsIDOMText inner;

}

