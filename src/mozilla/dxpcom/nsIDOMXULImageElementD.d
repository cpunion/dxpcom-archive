/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULImageElement.idl
 */

module mozilla.dxpcom.nsIDOMXULImageElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULImageElement;


public import mozilla.dxpcom.nsIDOMXULImageElementD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;
public import mozilla.xpcom.nsIDOMXULElement;
public import mozilla.dxpcom.nsIDOMXULElementD;


/* starting wrapper class:    nsIDOMXULImageElement */
class nsIDOMXULImageElementD : public nsIDOMXULElementD {

  static const nsIID IID = NS_IDOMXULIMAGEELEMENT_IID;


  alias nsIDOMXULImageElement InnerType;

  this(nsIDOMXULImageElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULImageElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULImageElement value) {
    inner = value;
  }

  /* attribute DOMString src; */
  wchar[] Src(){
    scope auto value = new AString();
    nsresult __result = inner.GetSrc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Src(wchar[] aSrc){
    scope auto value = new AString(aSrc);
    nsresult __result = inner.SetSrc(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMXULImageElement inner;

}

