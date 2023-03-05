/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKCS11ModuleDB.idl
 */

module mozilla.dxpcom.nsIPKCS11ModuleDBD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPKCS11ModuleDB;


public import mozilla.dxpcom.nsIPKCS11ModuleDBD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPKCS11Module;

public import mozilla.dxpcom.nsIPKCS11ModuleD;

public import mozilla.xpcom.nsIPKCS11Slot;

public import mozilla.dxpcom.nsIPKCS11SlotD;

public import mozilla.xpcom.nsIEnumerator;

public import mozilla.dxpcom.nsIEnumeratorD;


/* starting wrapper class:    nsIPKCS11ModuleDB */
class nsIPKCS11ModuleDBD : public nsISupportsD {

  static const nsIID IID = NS_IPKCS11MODULEDB_IID;


  alias nsIPKCS11ModuleDB InnerType;

  this(nsIPKCS11ModuleDB intr){
    super(intr);
    this.inner = intr;
  }

  nsIPKCS11ModuleDB opCast() {
    return inner;
  }

  void opAssign(nsIPKCS11ModuleDB value) {
    inner = value;
  }

  /* nsIPKCS11Module getInternal (); */
  nsIPKCS11ModuleD  GetInternal(){
    nsIPKCS11Module _retval;
    nsresult __result = inner.GetInternal(&_retval);
    CheckException(__result);
    return new nsIPKCS11ModuleD(_retval);
  }

  /* nsIPKCS11Module getInternalFIPS (); */
  nsIPKCS11ModuleD  GetInternalFIPS(){
    nsIPKCS11Module _retval;
    nsresult __result = inner.GetInternalFIPS(&_retval);
    CheckException(__result);
    return new nsIPKCS11ModuleD(_retval);
  }

  /* nsIPKCS11Module findModuleByName (in wstring name); */
  nsIPKCS11ModuleD  FindModuleByName(PRUnichar*name){
    nsIPKCS11Module _retval;
    nsresult __result = inner.FindModuleByName(name, &_retval);
    CheckException(__result);
    return new nsIPKCS11ModuleD(_retval);
  }

  /* nsIPKCS11Slot findSlotByName (in wstring name); */
  nsIPKCS11SlotD  FindSlotByName(PRUnichar*name){
    nsIPKCS11Slot _retval;
    nsresult __result = inner.FindSlotByName(name, &_retval);
    CheckException(__result);
    return new nsIPKCS11SlotD(_retval);
  }

  /* nsIEnumerator listModules (); */
  nsIEnumeratorD  ListModules(){
    nsIEnumerator _retval;
    nsresult __result = inner.ListModules(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* readonly attribute boolean canToggleFIPS; */
  PRBool CanToggleFIPS(){
    PRBool value;
    nsresult __result = inner.GetCanToggleFIPS(&value);
    CheckException(__result);
    return value;
  }

  /* void toggleFIPSMode (); */
  void ToggleFIPSMode(){
    nsresult __result = inner.ToggleFIPSMode();
    CheckException(__result);
  }

  /* readonly attribute boolean isFIPSEnabled; */
  PRBool IsFIPSEnabled(){
    PRBool value;
    nsresult __result = inner.GetIsFIPSEnabled(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIPKCS11ModuleDB inner;

}

