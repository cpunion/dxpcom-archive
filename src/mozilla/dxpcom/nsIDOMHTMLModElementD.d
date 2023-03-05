/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLModElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLModElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLModElement;


public import mozilla.dxpcom.nsIDOMHTMLModElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLModElement */
/**
 * The nsIDOMHTMLModElement interface is the interface to a [X]HTML
 * ins and del element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLModElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLMODELEMENT_IID;


  alias nsIDOMHTMLModElement InnerType;

  this(nsIDOMHTMLModElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLModElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLModElement value) {
    inner = value;
  }

  /* attribute DOMString cite; */
  wchar[] Cite(){
    scope auto value = new AString();
    nsresult __result = inner.GetCite(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Cite(wchar[] aCite){
    scope auto value = new AString(aCite);
    nsresult __result = inner.SetCite(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString dateTime; */
  wchar[] DateTime(){
    scope auto value = new AString();
    nsresult __result = inner.GetDateTime(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DateTime(wchar[] aDateTime){
    scope auto value = new AString(aDateTime);
    nsresult __result = inner.SetDateTime(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLModElement inner;

}

