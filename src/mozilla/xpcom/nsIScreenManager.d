/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScreenManager.idl
 */

module mozilla.xpcom.nsIScreenManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIScreen;


/* starting interface:    nsIScreenManager */
const char[] NS_ISCREENMANAGER_IID_STR = "662e7b78-1dd2-11b2-a3d3-fc1e5f5fb9d4";

const nsIID NS_ISCREENMANAGER_IID= 
  {0x662e7b78, 0x1dd2, 0x11b2, 
    [ 0xa3, 0xd3, 0xfc, 0x1e, 0x5f, 0x5f, 0xb9, 0xd4 ]};

extern(Windows)
interface nsIScreenManager : nsISupports {
  static const char[] IID_STR = NS_ISCREENMANAGER_IID_STR;
  static const nsIID IID = NS_ISCREENMANAGER_IID;

  /* nsIScreen screenForRect (in long left, in long top, in long width, in long height); */
  nsresult ScreenForRect(PRInt32 left, PRInt32 top, PRInt32 width, PRInt32 height, nsIScreen *_retval);

  /* readonly attribute nsIScreen primaryScreen; */
  nsresult GetPrimaryScreen(nsIScreen  *aPrimaryScreen);

  /* readonly attribute unsigned long numberOfScreens; */
  nsresult GetNumberOfScreens(PRUint32 *aNumberOfScreens);

}

