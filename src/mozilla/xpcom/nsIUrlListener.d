/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlListener.idl
 */

module mozilla.xpcom.nsIUrlListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIUrlListener */
const char[] NS_IURLLISTENER_IID_STR = "47618220-d008-11d2-8069-006008128c4e";

const nsIID NS_IURLLISTENER_IID= 
  {0x47618220, 0xd008, 0x11d2, 
    [ 0x80, 0x69, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIUrlListener : nsISupports {
  static const char[] IID_STR = NS_IURLLISTENER_IID_STR;
  static const nsIID IID = NS_IURLLISTENER_IID;

  /* void OnStartRunningUrl (in nsIURI url); */
  nsresult OnStartRunningUrl(nsIURI url);

  /* void OnStopRunningUrl (in nsIURI url, in nsresult aExitCode); */
  nsresult OnStopRunningUrl(nsIURI url, nsresult aExitCode);

}

