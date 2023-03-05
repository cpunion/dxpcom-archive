/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFAttributeHandler.idl
 */

module mozilla.dxpcom.nsIXTFAttributeHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFAttributeHandler;


public import mozilla.dxpcom.nsIXTFAttributeHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAtom;

public import mozilla.dxpcom.nsIAtomD;


/* starting wrapper class:    nsIXTFAttributeHandler */
class nsIXTFAttributeHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IXTFATTRIBUTEHANDLER_IID;


  alias nsIXTFAttributeHandler InnerType;

  this(nsIXTFAttributeHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFAttributeHandler opCast() {
    return inner;
  }

  void opAssign(nsIXTFAttributeHandler value) {
    inner = value;
  }

  /* boolean handlesAttribute (in nsIAtom name); */
  PRBool HandlesAttribute(nsIAtomD name){
    PRBool _retval;
    nsresult __result = inner.HandlesAttribute(name ? cast(nsIAtom)name : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setAttribute (in nsIAtom name, in AString newValue); */
  void SetAttribute(nsIAtomD name, wchar[] newValue){
    scope auto _newValue = new AString(newValue);
    nsresult __result = inner.SetAttribute(name ? cast(nsIAtom)name : null, cast(nsAString*)_newValue);
    CheckException(__result);
  }

  /* void removeAttribute (in nsIAtom name); */
  void RemoveAttribute(nsIAtomD name){
    nsresult __result = inner.RemoveAttribute(name ? cast(nsIAtom)name : null);
    CheckException(__result);
  }

  /* AString getAttribute (in nsIAtom name); */
  wchar[] GetAttribute(nsIAtomD name){
    scope auto _retval = new AString;
    nsresult __result = inner.GetAttribute(name ? cast(nsIAtom)name : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* boolean hasAttribute (in nsIAtom name); */
  PRBool HasAttribute(nsIAtomD name){
    PRBool _retval;
    nsresult __result = inner.HasAttribute(name ? cast(nsIAtom)name : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* unsigned long getAttributeCount (); */
  PRUint32 GetAttributeCount(){
    PRUint32 _retval;
    nsresult __result = inner.GetAttributeCount(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIAtom getAttributeNameAt (in unsigned long index); */
  nsIAtomD  GetAttributeNameAt(PRUint32 index){
    nsIAtom _retval;
    nsresult __result = inner.GetAttributeNameAt(index, &_retval);
    CheckException(__result);
    return new nsIAtomD(_retval);
  }

private:
  nsIXTFAttributeHandler inner;

}

