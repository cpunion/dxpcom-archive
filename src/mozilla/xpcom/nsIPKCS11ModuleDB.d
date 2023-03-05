/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKCS11ModuleDB.idl
 */

module mozilla.xpcom.nsIPKCS11ModuleDB;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPKCS11Module; /* forward declaration */

public import mozilla.xpcom.nsIPKCS11Slot; /* forward declaration */

public import mozilla.xpcom.nsIEnumerator; /* forward declaration */


/* starting interface:    nsIPKCS11ModuleDB */
const char[] NS_IPKCS11MODULEDB_IID_STR = "ff9fbcd7-9517-4334-b97a-ceed78909974";

const nsIID NS_IPKCS11MODULEDB_IID= 
  {0xff9fbcd7, 0x9517, 0x4334, 
    [ 0xb9, 0x7a, 0xce, 0xed, 0x78, 0x90, 0x99, 0x74 ]};

extern(Windows)
interface nsIPKCS11ModuleDB : nsISupports {
  static const char[] IID_STR = NS_IPKCS11MODULEDB_IID_STR;
  static const nsIID IID = NS_IPKCS11MODULEDB_IID;

  /* nsIPKCS11Module getInternal (); */
  nsresult GetInternal(nsIPKCS11Module *_retval);

  /* nsIPKCS11Module getInternalFIPS (); */
  nsresult GetInternalFIPS(nsIPKCS11Module *_retval);

  /* nsIPKCS11Module findModuleByName (in wstring name); */
  nsresult FindModuleByName(PRUnichar *name, nsIPKCS11Module *_retval);

  /* nsIPKCS11Slot findSlotByName (in wstring name); */
  nsresult FindSlotByName(PRUnichar *name, nsIPKCS11Slot *_retval);

  /* nsIEnumerator listModules (); */
  nsresult ListModules(nsIEnumerator *_retval);

  /* readonly attribute boolean canToggleFIPS; */
  nsresult GetCanToggleFIPS(PRBool *aCanToggleFIPS);

  /* void toggleFIPSMode (); */
  nsresult ToggleFIPSMode();

  /* readonly attribute boolean isFIPSEnabled; */
  nsresult GetIsFIPSEnabled(PRBool *aIsFIPSEnabled);

}

