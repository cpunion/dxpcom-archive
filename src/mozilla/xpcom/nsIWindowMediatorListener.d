/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowMediatorListener.idl
 */

module mozilla.xpcom.nsIWindowMediatorListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXULWindow; /* forward declaration */


/* starting interface:    nsIWindowMediatorListener */
const char[] NS_IWINDOWMEDIATORLISTENER_IID_STR = "2f276982-0d60-4377-a595-d350ba516395";

const nsIID NS_IWINDOWMEDIATORLISTENER_IID= 
  {0x2f276982, 0x0d60, 0x4377, 
    [ 0xa5, 0x95, 0xd3, 0x50, 0xba, 0x51, 0x63, 0x95 ]};

extern(Windows)
interface nsIWindowMediatorListener : nsISupports {
  static const char[] IID_STR = NS_IWINDOWMEDIATORLISTENER_IID_STR;
  static const nsIID IID = NS_IWINDOWMEDIATORLISTENER_IID;

  /* void onWindowTitleChange (in nsIXULWindow window, in wstring newTitle); */
  nsresult OnWindowTitleChange(nsIXULWindow window, PRUnichar *newTitle);

  /* void onOpenWindow (in nsIXULWindow window); */
  nsresult OnOpenWindow(nsIXULWindow window);

  /* void onCloseWindow (in nsIXULWindow window); */
  nsresult OnCloseWindow(nsIXULWindow window);

}

