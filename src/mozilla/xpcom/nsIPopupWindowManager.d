/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPopupWindowManager.idl
 */

module mozilla.xpcom.nsIPopupWindowManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIPopupWindowManager */
const char[] NS_IPOPUPWINDOWMANAGER_IID_STR = "3210a6aa-b464-4f57-9335-b22815567cf1";

const nsIID NS_IPOPUPWINDOWMANAGER_IID= 
  {0x3210a6aa, 0xb464, 0x4f57, 
    [ 0x93, 0x35, 0xb2, 0x28, 0x15, 0x56, 0x7c, 0xf1 ]};

extern(Windows)
interface nsIPopupWindowManager : nsISupports {
  static const char[] IID_STR = NS_IPOPUPWINDOWMANAGER_IID_STR;
  static const nsIID IID = NS_IPOPUPWINDOWMANAGER_IID;

  /**
   * These values are returned by the testPermission method
   */
  enum { ALLOW_POPUP = 1U };

  enum { DENY_POPUP = 2U };

  enum { ALLOW_POPUP_WITH_PREJUDICE = 3U };

  /**
   * Test whether a website has permission to show a popup window.
   * @param   uri is the URI to be tested
   * @return  one of the enumerated permission actions defined above
   */
  /* PRUint32 testPermission (in nsIURI uri); */
  nsresult TestPermission(nsIURI uri, PRUint32 *_retval);

}

