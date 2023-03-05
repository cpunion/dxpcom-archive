/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserInstance.idl
 */

module mozilla.xpcom.nsIBrowserInstance;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */


/* starting interface:    nsIBrowserInstance */
const char[] NS_IBROWSERINSTANCE_IID_STR = "8af0fa40-598d-11d3-806a-00600811a9c3";

const nsIID NS_IBROWSERINSTANCE_IID= 
  {0x8af0fa40, 0x598d, 0x11d3, 
    [ 0x80, 0x6a, 0x00, 0x60, 0x08, 0x11, 0xa9, 0xc3 ]};

extern(Windows)
interface nsIBrowserInstance : nsISupports {
  static const char[] IID_STR = NS_IBROWSERINSTANCE_IID_STR;
  static const nsIID IID = NS_IBROWSERINSTANCE_IID;

  /* boolean startPageCycler (); */
  nsresult StartPageCycler(PRBool *_retval);

  /* attribute boolean cmdLineURLUsed; */
  nsresult GetCmdLineURLUsed(PRBool *aCmdLineURLUsed);
  nsresult SetCmdLineURLUsed(PRBool aCmdLineURLUsed);

  /* void setWebShellWindow (in nsIDOMWindowInternal aWindow); */
  nsresult SetWebShellWindow(nsIDOMWindowInternal aWindow);

  /* void close (); */
  nsresult Close();

}

