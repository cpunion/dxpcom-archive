/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITokenDialogs.idl
 */

module mozilla.xpcom.nsITokenDialogs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsITokenDialogs */
const char[] NS_ITOKENDIALOGS_IID_STR = "bb4bae9c-39c5-11d5-ba26-00108303b117";

const nsIID NS_ITOKENDIALOGS_IID= 
  {0xbb4bae9c, 0x39c5, 0x11d5, 
    [ 0xba, 0x26, 0x00, 0x10, 0x83, 0x03, 0xb1, 0x17 ]};

extern(Windows)
interface nsITokenDialogs : nsISupports {
  static const char[] IID_STR = NS_ITOKENDIALOGS_IID_STR;
  static const nsIID IID = NS_ITOKENDIALOGS_IID;

  /* void ChooseToken (in nsIInterfaceRequestor ctx, [array, size_is (count)] in wstring tokenNameList, in unsigned long count, out wstring tokenName, out boolean canceled); */
  nsresult ChooseToken(nsIInterfaceRequestor ctx, PRUnichar **tokenNameList, PRUint32 count, PRUnichar **tokenName, PRBool *canceled);

}

