/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKCS11Module.idl
 */

module mozilla.dxpcom.nsIPKCS11ModuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPKCS11Module;


public import mozilla.dxpcom.nsIPKCS11ModuleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPKCS11Slot;

public import mozilla.dxpcom.nsIPKCS11SlotD;

public import mozilla.xpcom.nsIEnumerator;

public import mozilla.dxpcom.nsIEnumeratorD;


/* starting wrapper class:    nsIPKCS11Module */
class nsIPKCS11ModuleD : public nsISupportsD {

  static const nsIID IID = NS_IPKCS11MODULE_IID;


  alias nsIPKCS11Module InnerType;

  this(nsIPKCS11Module intr){
    super(intr);
    this.inner = intr;
  }

  nsIPKCS11Module opCast() {
    return inner;
  }

  void opAssign(nsIPKCS11Module value) {
    inner = value;
  }

  /* readonly attribute wstring name; */
  PRUnichar* Name(){
    PRUnichar* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring libName; */
  PRUnichar* LibName(){
    PRUnichar* value;
    nsresult __result = inner.GetLibName(&value);
    CheckException(__result);
    return value;
  }

  /* nsIPKCS11Slot findSlotByName (in wstring name); */
  nsIPKCS11SlotD  FindSlotByName(PRUnichar*name){
    nsIPKCS11Slot _retval;
    nsresult __result = inner.FindSlotByName(name, &_retval);
    CheckException(__result);
    return new nsIPKCS11SlotD(_retval);
  }

  /* nsIEnumerator listSlots (); */
  nsIEnumeratorD  ListSlots(){
    nsIEnumerator _retval;
    nsresult __result = inner.ListSlots(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

private:
  nsIPKCS11Module inner;

}

