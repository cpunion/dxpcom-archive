/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKCS11Module.idl
 */

module mozilla.xpcom.nsIPKCS11Module;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPKCS11Slot; /* forward declaration */

public import mozilla.xpcom.nsIEnumerator; /* forward declaration */


/* starting interface:    nsIPKCS11Module */
const char[] NS_IPKCS11MODULE_IID_STR = "8a44bdf9-d1a5-4734-bd5a-34ed7fe564c2";

const nsIID NS_IPKCS11MODULE_IID= 
  {0x8a44bdf9, 0xd1a5, 0x4734, 
    [ 0xbd, 0x5a, 0x34, 0xed, 0x7f, 0xe5, 0x64, 0xc2 ]};

extern(Windows)
interface nsIPKCS11Module : nsISupports {
  static const char[] IID_STR = NS_IPKCS11MODULE_IID_STR;
  static const nsIID IID = NS_IPKCS11MODULE_IID;

  /* readonly attribute wstring name; */
  nsresult GetName(PRUnichar * *aName);

  /* readonly attribute wstring libName; */
  nsresult GetLibName(PRUnichar * *aLibName);

  /* nsIPKCS11Slot findSlotByName (in wstring name); */
  nsresult FindSlotByName(PRUnichar *name, nsIPKCS11Slot *_retval);

  /* nsIEnumerator listSlots (); */
  nsresult ListSlots(nsIEnumerator *_retval);

}

