/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLFormControlList.idl
 */

module mozilla.dxpcom.nsIDOMNSHTMLFormControlListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSHTMLFormControlList;


public import mozilla.dxpcom.nsIDOMNSHTMLFormControlListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDOMNSHTMLFormControlList */
class nsIDOMNSHTMLFormControlListD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSHTMLFORMCONTROLLIST_IID;


  alias nsIDOMNSHTMLFormControlList InnerType;

  this(nsIDOMNSHTMLFormControlList intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSHTMLFormControlList opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSHTMLFormControlList value) {
    inner = value;
  }

  /* nsISupports namedItem (in DOMString name); */
  nsISupportsD  NamedItem(wchar[] name){
    scope auto _name = new AString(name);
    nsISupports _retval;
    nsresult __result = inner.NamedItem(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIDOMNSHTMLFormControlList inner;

}

