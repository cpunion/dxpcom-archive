/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocumentCSS.idl
 */

module mozilla.dxpcom.nsIDOMDocumentCSSD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMDocumentCSS;


public import mozilla.dxpcom.nsIDOMDocumentCSSD;

public import mozilla.xpcom.nsIDOMDocumentStyle;
public import mozilla.dxpcom.nsIDOMDocumentStyleD;


/* starting wrapper class:    nsIDOMDocumentCSS */
class nsIDOMDocumentCSSD : public nsIDOMDocumentStyleD {

  static const nsIID IID = NS_IDOMDOCUMENTCSS_IID;


  alias nsIDOMDocumentCSS InnerType;

  this(nsIDOMDocumentCSS intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMDocumentCSS opCast() {
    return inner;
  }

  void opAssign(nsIDOMDocumentCSS value) {
    inner = value;
  }

  /* nsIDOMCSSStyleDeclaration getOverrideStyle (in nsIDOMElement elt, in DOMString pseudoElt); */
  nsIDOMCSSStyleDeclarationD  GetOverrideStyle(nsIDOMElementD elt, wchar[] pseudoElt){
    scope auto _pseudoElt = new AString(pseudoElt);
    nsIDOMCSSStyleDeclaration _retval;
    nsresult __result = inner.GetOverrideStyle(elt ? cast(nsIDOMElement)elt : null, cast(nsAString*)_pseudoElt, &_retval);
    CheckException(__result);
    return new nsIDOMCSSStyleDeclarationD(_retval);
  }

private:
  nsIDOMDocumentCSS inner;

}

