/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULBrowserWindow.idl
 */

module mozilla.xpcom.nsIXULBrowserWindow;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRequest; /* forward declaration */


/* starting interface:    nsIXULBrowserWindow */
const char[] NS_IXULBROWSERWINDOW_IID_STR = "46b4015c-0121-11d4-9877-00c04fa0d27a";

const nsIID NS_IXULBROWSERWINDOW_IID= 
  {0x46b4015c, 0x0121, 0x11d4, 
    [ 0x98, 0x77, 0x00, 0xc0, 0x4f, 0xa0, 0xd2, 0x7a ]};

extern(Windows)
interface nsIXULBrowserWindow : nsISupports {
  static const char[] IID_STR = NS_IXULBROWSERWINDOW_IID_STR;
  static const nsIID IID = NS_IXULBROWSERWINDOW_IID;

  /* void setJSStatus (in wstring status); */
  nsresult SetJSStatus(PRUnichar *status);

  /* void setJSDefaultStatus (in wstring status); */
  nsresult SetJSDefaultStatus(PRUnichar *status);

  /* void setOverLink (in wstring link); */
  nsresult SetOverLink(PRUnichar *link);

}

