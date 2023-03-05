/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUpdateNotification.idl
 */

module mozilla.xpcom.nsIUpdateNotification;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUpdateNotification */
const char[] NS_IUPDATENOTIFICATION_IID_STR = "6cb61472-042c-11d4-ac85-00c04fa0d26b";

const nsIID NS_IUPDATENOTIFICATION_IID= 
  {0x6cb61472, 0x042c, 0x11d4, 
    [ 0xac, 0x85, 0x00, 0xc0, 0x4f, 0xa0, 0xd2, 0x6b ]};

extern(Windows)
interface nsIUpdateNotification : nsISupports {
  static const char[] IID_STR = NS_IUPDATENOTIFICATION_IID_STR;
  static const nsIID IID = NS_IUPDATENOTIFICATION_IID;

  /* void displayUpdateDialog (); */
  nsresult DisplayUpdateDialog();

}

