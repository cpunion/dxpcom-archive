/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIQABrowserView.idl
 */

module mozilla.xpcom.nsIQABrowserView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIBaseWindow;

public import mozilla.xpcom.nsIWebBrowser; /* forward declaration */

public import mozilla.xpcom.nsIWebBrowserChrome; /* forward declaration */


/* starting interface:    nsIQABrowserView */
const char[] NS_IQABROWSERVIEW_IID_STR = "169157f5-a70f-4ea7-ba36-bdfde702ccfe";

const nsIID NS_IQABROWSERVIEW_IID= 
  {0x169157f5, 0xa70f, 0x4ea7, 
    [ 0xba, 0x36, 0xbd, 0xfd, 0xe7, 0x02, 0xcc, 0xfe ]};

extern(Windows)
interface nsIQABrowserView : nsISupports {
  static const char[] IID_STR = NS_IQABROWSERVIEW_IID_STR;
  static const nsIID IID = NS_IQABROWSERVIEW_IID;

  /* void CreateBrowser (in nativeWindow aNativeWnd, in nsIWebBrowserChrome aChrome); */
  nsresult CreateBrowser(nativeWindow aNativeWnd, nsIWebBrowserChrome aChrome);

  /* void DestroyBrowser (); */
  nsresult DestroyBrowser();

  /* readonly attribute nsIWebBrowser WebBrowser; */
  nsresult GetWebBrowser(nsIWebBrowser  *aWebBrowser);

}

