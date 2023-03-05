/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintProgress.idl
 */

module mozilla.xpcom.nsIPrintProgress;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */

public import mozilla.xpcom.nsIPrompt; /* forward declaration */


/* starting interface:    nsIPrintProgress */
const char[] NS_IPRINTPROGRESS_IID_STR = "7e46bc35-fb7d-4b45-ab35-82fd61015380";

const nsIID NS_IPRINTPROGRESS_IID= 
  {0x7e46bc35, 0xfb7d, 0x4b45, 
    [ 0xab, 0x35, 0x82, 0xfd, 0x61, 0x01, 0x53, 0x80 ]};

extern(Windows)
interface nsIPrintProgress : nsIWebProgressListener {
  static const char[] IID_STR = NS_IPRINTPROGRESS_IID_STR;
  static const nsIID IID = NS_IPRINTPROGRESS_IID;

  /* void openProgressDialog (in nsIDOMWindowInternal parent, in string dialogURL, in nsISupports parameters, in nsIObserver openDialogObserver, out boolean notifyOnOpen); */
  nsresult OpenProgressDialog(nsIDOMWindowInternal parent, char *dialogURL, nsISupports parameters, nsIObserver openDialogObserver, PRBool *notifyOnOpen);

  /* void closeProgressDialog (in boolean forceClose); */
  nsresult CloseProgressDialog(PRBool forceClose);

  /* void registerListener (in nsIWebProgressListener listener); */
  nsresult RegisterListener(nsIWebProgressListener listener);

  /* void unregisterListener (in nsIWebProgressListener listener); */
  nsresult UnregisterListener(nsIWebProgressListener listener);

  /* void doneIniting (); */
  nsresult DoneIniting();

  /* nsIPrompt getPrompter (); */
  nsresult GetPrompter(nsIPrompt *_retval);

  /* attribute boolean processCanceledByUser; */
  nsresult GetProcessCanceledByUser(PRBool *aProcessCanceledByUser);
  nsresult SetProcessCanceledByUser(PRBool aProcessCanceledByUser);

}

