/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgStatusFeedback.idl
 */

module mozilla.xpcom.nsIMsgStatusFeedback;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIMsgStatusFeedback */
const char[] NS_IMSGSTATUSFEEDBACK_IID_STR = "a0032cf0-49e9-11d3-8d77-00805f8a6617";

const nsIID NS_IMSGSTATUSFEEDBACK_IID= 
  {0xa0032cf0, 0x49e9, 0x11d3, 
    [ 0x8d, 0x77, 0x00, 0x80, 0x5f, 0x8a, 0x66, 0x17 ]};

extern(Windows)
interface nsIMsgStatusFeedback : nsISupports {
  static const char[] IID_STR = NS_IMSGSTATUSFEEDBACK_IID_STR;
  static const nsIID IID = NS_IMSGSTATUSFEEDBACK_IID;

  /* void showStatusString (in wstring status); */
  nsresult ShowStatusString(PRUnichar *status);

  /* void startMeteors (); */
  nsresult StartMeteors();

  /* void stopMeteors (); */
  nsresult StopMeteors();

  /* void showProgress (in long percent); */
  nsresult ShowProgress(PRInt32 percent);

  /* void setStatusString (in wstring status); */
  nsresult SetStatusString(PRUnichar *status);

  /* [noscript] void setDocShell (in nsIDocShell shell, in nsIDOMWindow window); */
  nsresult SetDocShell(nsIDocShell shell, nsIDOMWindow window);

  /* void closeWindow (); */
  nsresult CloseWindow();

}

