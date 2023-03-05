/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUserCertPicker.idl
 */

module mozilla.xpcom.nsIUserCertPicker;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIUserCertPicker */
const char[] NS_IUSERCERTPICKER_IID_STR = "06d018e0-d41b-4629-a4fc-daaa6029888e";

const nsIID NS_IUSERCERTPICKER_IID= 
  {0x06d018e0, 0xd41b, 0x4629, 
    [ 0xa4, 0xfc, 0xda, 0xaa, 0x60, 0x29, 0x88, 0x8e ]};

extern(Windows)
interface nsIUserCertPicker : nsISupports {
  static const char[] IID_STR = NS_IUSERCERTPICKER_IID_STR;
  static const nsIID IID = NS_IUSERCERTPICKER_IID;

  /* nsIX509Cert pickByUsage (in nsIInterfaceRequestor ctx, in wstring selectedNickname, in long certUsage, in boolean allowInvalid, in boolean allowDuplicateNicknames, out boolean canceled); */
  nsresult PickByUsage(nsIInterfaceRequestor ctx, PRUnichar *selectedNickname, PRInt32 certUsage, PRBool allowInvalid, PRBool allowDuplicateNicknames, PRBool *canceled, nsIX509Cert *_retval);

}

