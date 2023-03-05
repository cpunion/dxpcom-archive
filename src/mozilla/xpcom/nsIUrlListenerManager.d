/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlListenerManager.idl
 */

module mozilla.xpcom.nsIUrlListenerManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIUrlListener;

public import mozilla.xpcom.nsIMsgMailNewsUrl; /* forward declaration */


/* starting interface:    nsIUrlListenerManager */
const char[] NS_IURLLISTENERMANAGER_IID_STR = "5bcdb610-d00d-11d2-8069-006008128c4e";

const nsIID NS_IURLLISTENERMANAGER_IID= 
  {0x5bcdb610, 0xd00d, 0x11d2, 
    [ 0x80, 0x69, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIUrlListenerManager : nsISupports {
  static const char[] IID_STR = NS_IURLLISTENERMANAGER_IID_STR;
  static const nsIID IID = NS_IURLLISTENERMANAGER_IID;

  /* void RegisterListener (in nsIUrlListener aUrlListener); */
  nsresult RegisterListener(nsIUrlListener aUrlListener);

  /* void UnRegisterListener (in nsIUrlListener aUrlListener); */
  nsresult UnRegisterListener(nsIUrlListener aUrlListener);

  /* void OnStartRunningUrl (in nsIMsgMailNewsUrl aUrl); */
  nsresult OnStartRunningUrl(nsIMsgMailNewsUrl aUrl);

  /* void OnStopRunningUrl (in nsIMsgMailNewsUrl aUrl, in nsresult aExitCode); */
  nsresult OnStopRunningUrl(nsIMsgMailNewsUrl aUrl, nsresult aExitCode);

}

