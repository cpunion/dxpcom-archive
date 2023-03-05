/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowCreator.idl
 */

module mozilla.xpcom.nsIWindowCreator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIWebBrowserChrome; /* forward declaration */


/* starting interface:    nsIWindowCreator */
const char[] NS_IWINDOWCREATOR_IID_STR = "30465632-a777-44cc-90f9-8145475ef999";

const nsIID NS_IWINDOWCREATOR_IID= 
  {0x30465632, 0xa777, 0x44cc, 
    [ 0x90, 0xf9, 0x81, 0x45, 0x47, 0x5e, 0xf9, 0x99 ]};

extern(Windows)
interface nsIWindowCreator : nsISupports {
  static const char[] IID_STR = NS_IWINDOWCREATOR_IID_STR;
  static const nsIID IID = NS_IWINDOWCREATOR_IID;

  /** Create a new window. Gecko will/may call this method, if made
      available to it, to create new windows.
      @param parent parent window, if any. null if not. the newly created
                    window should be made a child/dependent window of
                    the parent, if any (and if the concept applies
                    to the underlying OS).
      @param chromeFlags chrome features from nsIWebBrowserChrome
      @return the new window
  */
  /* nsIWebBrowserChrome createChromeWindow (in nsIWebBrowserChrome parent, in PRUint32 chromeFlags); */
  nsresult CreateChromeWindow(nsIWebBrowserChrome parent, PRUint32 chromeFlags, nsIWebBrowserChrome *_retval);

}

