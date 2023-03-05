/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertPickDialogs.idl
 */

module mozilla.xpcom.nsICertPickDialogs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsICertPickDialogs */
const char[] NS_ICERTPICKDIALOGS_IID_STR = "51d59b08-1dd2-11b2-ad4a-a51b92f8a184";

const nsIID NS_ICERTPICKDIALOGS_IID= 
  {0x51d59b08, 0x1dd2, 0x11b2, 
    [ 0xad, 0x4a, 0xa5, 0x1b, 0x92, 0xf8, 0xa1, 0x84 ]};

/**
 * nsICertPicker
 * Provides generic UI for choosing a certificate
 */
extern(Windows)
interface nsICertPickDialogs : nsISupports {
  static const char[] IID_STR = NS_ICERTPICKDIALOGS_IID_STR;
  static const nsIID IID = NS_ICERTPICKDIALOGS_IID;

  /**
   * PickCertificate
   *   General purpose certificate prompter
   */
  /* void PickCertificate (in nsIInterfaceRequestor ctx, [array, size_is (count)] in wstring certNickList, [array, size_is (count)] in wstring certDetailsList, in unsigned long count, inout long selectedIndex, out boolean canceled); */
  nsresult PickCertificate(nsIInterfaceRequestor ctx, PRUnichar **certNickList, PRUnichar **certDetailsList, PRUint32 count, PRInt32 *selectedIndex, PRBool *canceled);

}

