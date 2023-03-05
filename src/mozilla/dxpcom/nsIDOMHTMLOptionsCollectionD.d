/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOptionsCollection.idl
 */

module mozilla.dxpcom.nsIDOMHTMLOptionsCollectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLOptionsCollection;


public import mozilla.dxpcom.nsIDOMHTMLOptionsCollectionD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLOptionsCollection */
/**
 * The nsIDOMHTMLOptionsCollection interface is the interface to a
 * collection of [X]HTML option elements.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLOptionsCollectionD : public nsISupportsD {

  static const nsIID IID = NS_IDOMHTMLOPTIONSCOLLECTION_IID;


  alias nsIDOMHTMLOptionsCollection InnerType;

  this(nsIDOMHTMLOptionsCollection intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLOptionsCollection opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLOptionsCollection value) {
    inner = value;
  }

  /* attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }
  void Length(PRUint32 aLength){
    nsresult __result = inner.SetLength(aLength);
    CheckException(__result);
  }

  /* nsIDOMNode item (in unsigned long index); */
  nsIDOMNodeD  Item(PRUint32 index){
    nsIDOMNode _retval;
    nsresult __result = inner.Item(index, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode namedItem (in DOMString name); */
  nsIDOMNodeD  NamedItem(wchar[] name){
    scope auto _name = new AString(name);
    nsIDOMNode _retval;
    nsresult __result = inner.NamedItem(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

private:
  nsIDOMHTMLOptionsCollection inner;

}

