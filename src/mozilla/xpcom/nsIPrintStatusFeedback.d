/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintStatusFeedback.idl
 */

module mozilla.xpcom.nsIPrintStatusFeedback;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */


/* starting interface:    nsIPrintStatusFeedback */
const char[] NS_IPRINTSTATUSFEEDBACK_IID_STR = "19855dff-3248-4902-b196-93ee4c477880";

const nsIID NS_IPRINTSTATUSFEEDBACK_IID= 
  {0x19855dff, 0x3248, 0x4902, 
    [ 0xb1, 0x96, 0x93, 0xee, 0x4c, 0x47, 0x78, 0x80 ]};

extern(Windows)
interface nsIPrintStatusFeedback : nsISupports {
  static const char[] IID_STR = NS_IPRINTSTATUSFEEDBACK_IID_STR;
  static const nsIID IID = NS_IPRINTSTATUSFEEDBACK_IID;

  /* void showStatusString (in wstring status); */
  nsresult ShowStatusString(PRUnichar *status);

  /* void startMeteors (); */
  nsresult StartMeteors();

  /* void stopMeteors (); */
  nsresult StopMeteors();

  /* void showProgress (in long percent); */
  nsresult ShowProgress(PRInt32 percent);

  /* [noscript] void setDocShell (in nsIDocShell shell, in nsIDOMWindowInternal window); */
  nsresult SetDocShell(nsIDocShell shell, nsIDOMWindowInternal window);

  /* void closeWindow (); */
  nsresult CloseWindow();

}

