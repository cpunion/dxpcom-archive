/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMViewCSS.idl
 */

module mozilla.dxpcom.nsIDOMViewCSSD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMViewCSS;


public import mozilla.dxpcom.nsIDOMViewCSSD;

public import mozilla.xpcom.nsIDOMAbstractView;
public import mozilla.dxpcom.nsIDOMAbstractViewD;


/* starting wrapper class:    nsIDOMViewCSS */
class nsIDOMViewCSSD : public nsIDOMAbstractViewD {

  static const nsIID IID = NS_IDOMVIEWCSS_IID;


  alias nsIDOMViewCSS InnerType;

  this(nsIDOMViewCSS intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMViewCSS opCast() {
    return inner;
  }

  void opAssign(nsIDOMViewCSS value) {
    inner = value;
  }

  /* nsIDOMCSSStyleDeclaration getComputedStyle (in nsIDOMElement elt, in DOMString pseudoElt); */
  nsIDOMCSSStyleDeclarationD  GetComputedStyle(nsIDOMElementD elt, wchar[] pseudoElt){
    scope auto _pseudoElt = new AString(pseudoElt);
    nsIDOMCSSStyleDeclaration _retval;
    nsresult __result = inner.GetComputedStyle(elt ? cast(nsIDOMElement)elt : null, cast(nsAString*)_pseudoElt, &_retval);
    CheckException(__result);
    return new nsIDOMCSSStyleDeclarationD(_retval);
  }

private:
  nsIDOMViewCSS inner;

}

