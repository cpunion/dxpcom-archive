/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIQABrowserUIGlue.idl
 */

module mozilla.xpcom.nsIQABrowserUIGlue;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIBaseWindow;

public import mozilla.xpcom.nsIWebBrowserChrome; /* forward declaration */

public import mozilla.xpcom.nsIWebBrowser; /* forward declaration */

public import mozilla.xpcom.nsIDOMEvent; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIQABrowserUIGlue */
const char[] NS_IQABROWSERUIGLUE_IID_STR = "86d2c83d-aefa-4382-bdc5-881a9232ed7b";

const nsIID NS_IQABROWSERUIGLUE_IID= 
  {0x86d2c83d, 0xaefa, 0x4382, 
    [ 0xbd, 0xc5, 0x88, 0x1a, 0x92, 0x32, 0xed, 0x7b ]};

extern(Windows)
interface nsIQABrowserUIGlue : nsISupports {
  static const char[] IID_STR = NS_IQABROWSERUIGLUE_IID_STR;
  static const nsIID IID = NS_IQABROWSERUIGLUE_IID;

  /* void destroy (in nsIWebBrowserChrome aChrome); */
  nsresult Destroy(nsIWebBrowserChrome aChrome);

  /* void destroyed (in nsIWebBrowserChrome aChrome); */
  nsresult Destroyed(nsIWebBrowserChrome aChrome);

  /* void setFocus (in nsIWebBrowserChrome aChrome); */
  nsresult SetFocus(nsIWebBrowserChrome aChrome);

  /* void updateStatusBarText (in nsIWebBrowserChrome aChrome, in wstring aStatusText); */
  nsresult UpdateStatusBarText(nsIWebBrowserChrome aChrome, PRUnichar *aStatusText);

  /* void updateCurrentURI (in nsIWebBrowserChrome aChrome); */
  nsresult UpdateCurrentURI(nsIWebBrowserChrome aChrome);

  /* void updateBusyState (in nsIWebBrowserChrome aChrome, in boolean aBusy); */
  nsresult UpdateBusyState(nsIWebBrowserChrome aChrome, PRBool aBusy);

  /* void updateProgress (in nsIWebBrowserChrome aChrome, in long aCurrent, in long aMax); */
  nsresult UpdateProgress(nsIWebBrowserChrome aChrome, PRInt32 aCurrent, PRInt32 aMax);

  /* void showContextMenu (in nsIWebBrowserChrome aChrome, in long aContextFlags, in nsIDOMEvent aEvent, in nsIDOMNode aNode); */
  nsresult ShowContextMenu(nsIWebBrowserChrome aChrome, PRInt32 aContextFlags, nsIDOMEvent aEvent, nsIDOMNode aNode);

  /* void showTooltip (in nsIWebBrowserChrome aChrome, in long aXCoords, in long aYCoords, in wstring aTipText); */
  nsresult ShowTooltip(nsIWebBrowserChrome aChrome, PRInt32 aXCoords, PRInt32 aYCoords, PRUnichar *aTipText);

  /* void hideTooltip (in nsIWebBrowserChrome aChrome); */
  nsresult HideTooltip(nsIWebBrowserChrome aChrome);

  /* void showWindow (in nsIWebBrowserChrome aChrome, in boolean aShow); */
  nsresult ShowWindow(nsIWebBrowserChrome aChrome, PRBool aShow);

  /* void sizeTo (in nsIWebBrowserChrome aChrome, in long aWidth, in long aHeight); */
  nsresult SizeTo(nsIWebBrowserChrome aChrome, PRInt32 aWidth, PRInt32 aHeight);

  /* string getResourceStringById (in long aID); */
  nsresult GetResourceStringById(PRInt32 aID, char **_retval);

  /* attribute boolean visibility; */
  nsresult GetVisibility(PRBool *aVisibility);
  nsresult SetVisibility(PRBool aVisibility);

  /* attribute wstring title; */
  nsresult GetTitle(PRUnichar * *aTitle);
  nsresult SetTitle(PRUnichar * aTitle);

  /* attribute boolean allowNewBrowserWindows; */
  nsresult GetAllowNewBrowserWindows(PRBool *aAllowNewBrowserWindows);
  nsresult SetAllowNewBrowserWindows(PRBool aAllowNewBrowserWindows);

  /* nsIWebBrowserChrome createNewBrowserWindow (in long aChromeFlags, in nsIWebBrowserChrome aParent); */
  nsresult CreateNewBrowserWindow(PRInt32 aChromeFlags, nsIWebBrowserChrome aParent, nsIWebBrowserChrome *_retval);

  /* void loadURL (in string aURL); */
  nsresult LoadURL(char *aURL);

  /* void loadHomePage (); */
  nsresult LoadHomePage();

}

