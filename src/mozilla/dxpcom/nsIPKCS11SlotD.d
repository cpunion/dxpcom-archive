/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKCS11Slot.idl
 */

module mozilla.dxpcom.nsIPKCS11SlotD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPKCS11Slot;


public import mozilla.dxpcom.nsIPKCS11SlotD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPK11Token;

public import mozilla.dxpcom.nsIPK11TokenD;


/* starting wrapper class:    nsIPKCS11Slot */
class nsIPKCS11SlotD : public nsISupportsD {

  static const nsIID IID = NS_IPKCS11SLOT_IID;


  alias nsIPKCS11Slot InnerType;

  this(nsIPKCS11Slot intr){
    super(intr);
    this.inner = intr;
  }

  nsIPKCS11Slot opCast() {
    return inner;
  }

  void opAssign(nsIPKCS11Slot value) {
    inner = value;
  }

  /* readonly attribute wstring name; */
  PRUnichar* Name(){
    PRUnichar* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring desc; */
  PRUnichar* Desc(){
    PRUnichar* value;
    nsresult __result = inner.GetDesc(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring manID; */
  PRUnichar* ManID(){
    PRUnichar* value;
    nsresult __result = inner.GetManID(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring HWVersion; */
  PRUnichar* HWVersion(){
    PRUnichar* value;
    nsresult __result = inner.GetHWVersion(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring FWVersion; */
  PRUnichar* FWVersion(){
    PRUnichar* value;
    nsresult __result = inner.GetFWVersion(&value);
    CheckException(__result);
    return value;
  }

  enum { SLOT_DISABLED = 0U }

  enum { SLOT_NOT_PRESENT = 1U }

  enum { SLOT_UNINITIALIZED = 2U }

  enum { SLOT_NOT_LOGGED_IN = 3U }

  enum { SLOT_LOGGED_IN = 4U }

  enum { SLOT_READY = 5U }

  /* readonly attribute unsigned long status; */
  PRUint32 Status(){
    PRUint32 value;
    nsresult __result = inner.GetStatus(&value);
    CheckException(__result);
    return value;
  }

  /* nsIPK11Token getToken (); */
  nsIPK11TokenD  GetToken(){
    nsIPK11Token _retval;
    nsresult __result = inner.GetToken(&_retval);
    CheckException(__result);
    return new nsIPK11TokenD(_retval);
  }

  /* readonly attribute wstring tokenName; */
  PRUnichar* TokenName(){
    PRUnichar* value;
    nsresult __result = inner.GetTokenName(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIPKCS11Slot inner;

}

