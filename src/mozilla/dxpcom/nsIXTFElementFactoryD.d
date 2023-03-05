/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFElementFactory.idl
 */

module mozilla.dxpcom.nsIXTFElementFactoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFElementFactory;


public import mozilla.dxpcom.nsIXTFElementFactoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXTFElement;

public import mozilla.dxpcom.nsIXTFElementD;


/* starting wrapper class:    nsIXTFElementFactory */
class nsIXTFElementFactoryD : public nsISupportsD {

  static const nsIID IID = NS_IXTFELEMENTFACTORY_IID;


  alias nsIXTFElementFactory InnerType;

  this(nsIXTFElementFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFElementFactory opCast() {
    return inner;
  }

  void opAssign(nsIXTFElementFactory value) {
    inner = value;
  }

  /* nsIXTFElement createElement (in AString tagName); */
  nsIXTFElementD  CreateElement(wchar[] tagName){
    scope auto _tagName = new AString(tagName);
    nsIXTFElement _retval;
    nsresult __result = inner.CreateElement(cast(nsAString*)_tagName, &_retval);
    CheckException(__result);
    return new nsIXTFElementD(_retval);
  }

private:
  nsIXTFElementFactory inner;

}

