/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIQABrowserChrome.idl
 */

module mozilla.xpcom.nsIQABrowserChrome;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIBaseWindow;
public import mozilla.xpcom.nsIWeakReference;

public import mozilla.xpcom.nsIQABrowserUIGlue; /* forward declaration */

public import mozilla.xpcom.nsIQABrowserView; /* forward declaration */


/* starting interface:    nsIQABrowserChrome */
const char[] NS_IQABROWSERCHROME_IID_STR = "31d58e11-e4a3-49fc-b544-c100f375a280";

const nsIID NS_IQABROWSERCHROME_IID= 
  {0x31d58e11, 0xe4a3, 0x49fc, 
    [ 0xb5, 0x44, 0xc1, 0x00, 0xf3, 0x75, 0xa2, 0x80 ]};

extern(Windows)
interface nsIQABrowserChrome : nsISupports {
  static const char[] IID_STR = NS_IQABROWSERCHROME_IID_STR;
  static const nsIID IID = NS_IQABROWSERCHROME_IID;

  /* void initQAChrome (in nsIQABrowserUIGlue uiGlue, in nativeWindow nativeWnd); */
  nsresult InitQAChrome(nsIQABrowserUIGlue uiGlue, nativeWindow nativeWnd);

}

