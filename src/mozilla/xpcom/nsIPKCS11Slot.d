/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKCS11Slot.idl
 */

module mozilla.xpcom.nsIPKCS11Slot;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPK11Token; /* forward declaration */


/* starting interface:    nsIPKCS11Slot */
const char[] NS_IPKCS11SLOT_IID_STR = "c2d4f296-ee60-11d4-998b-00b0d02354a0";

const nsIID NS_IPKCS11SLOT_IID= 
  {0xc2d4f296, 0xee60, 0x11d4, 
    [ 0x99, 0x8b, 0x00, 0xb0, 0xd0, 0x23, 0x54, 0xa0 ]};

extern(Windows)
interface nsIPKCS11Slot : nsISupports {
  static const char[] IID_STR = NS_IPKCS11SLOT_IID_STR;
  static const nsIID IID = NS_IPKCS11SLOT_IID;

  /* readonly attribute wstring name; */
  nsresult GetName(PRUnichar * *aName);

  /* readonly attribute wstring desc; */
  nsresult GetDesc(PRUnichar * *aDesc);

  /* readonly attribute wstring manID; */
  nsresult GetManID(PRUnichar * *aManID);

  /* readonly attribute wstring HWVersion; */
  nsresult GetHWVersion(PRUnichar * *aHWVersion);

  /* readonly attribute wstring FWVersion; */
  nsresult GetFWVersion(PRUnichar * *aFWVersion);

  enum { SLOT_DISABLED = 0U };

  enum { SLOT_NOT_PRESENT = 1U };

  enum { SLOT_UNINITIALIZED = 2U };

  enum { SLOT_NOT_LOGGED_IN = 3U };

  enum { SLOT_LOGGED_IN = 4U };

  enum { SLOT_READY = 5U };

  /* readonly attribute unsigned long status; */
  nsresult GetStatus(PRUint32 *aStatus);

  /* nsIPK11Token getToken (); */
  nsresult GetToken(nsIPK11Token *_retval);

  /* readonly attribute wstring tokenName; */
  nsresult GetTokenName(PRUnichar * *aTokenName);

}

