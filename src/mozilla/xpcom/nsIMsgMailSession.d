/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailSession.idl
 */

module mozilla.xpcom.nsIMsgMailSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFolderListener;
public import mozilla.xpcom.nsIMsgWindow;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIAtom;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIMsgMailSession */
const char[] NS_IMSGMAILSESSION_IID_STR = "d5124440-d59e-11d2-806a-006008128c4e";

const nsIID NS_IMSGMAILSESSION_IID= 
  {0xd5124440, 0xd59e, 0x11d2, 
    [ 0x80, 0x6a, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIMsgMailSession : nsISupports {
  static const char[] IID_STR = NS_IMSGMAILSESSION_IID_STR;
  static const nsIID IID = NS_IMSGMAILSESSION_IID;

  /* void Shutdown (); */
  nsresult Shutdown();

  /* void AddFolderListener (in nsIFolderListener listener, in folderListenerNotifyFlagValue notifyFlags); */
  nsresult AddFolderListener(nsIFolderListener listener, folderListenerNotifyFlagValue notifyFlags);

  /* void RemoveFolderListener (in nsIFolderListener listener); */
  nsresult RemoveFolderListener(nsIFolderListener listener);

  /* readonly attribute nsIMsgWindow topmostMsgWindow; */
  nsresult GetTopmostMsgWindow(nsIMsgWindow  *aTopmostMsgWindow);

  /* void AddMsgWindow (in nsIMsgWindow msgWindow); */
  nsresult AddMsgWindow(nsIMsgWindow msgWindow);

  /* void RemoveMsgWindow (in nsIMsgWindow msgWindow); */
  nsresult RemoveMsgWindow(nsIMsgWindow msgWindow);

  /* readonly attribute nsISupportsArray msgWindowsArray; */
  nsresult GetMsgWindowsArray(nsISupportsArray  *aMsgWindowsArray);

  /* boolean IsFolderOpenInWindow (in nsIMsgFolder folder); */
  nsresult IsFolderOpenInWindow(nsIMsgFolder folder, PRBool *_retval);

  /* string ConvertMsgURIToMsgURL (in string aURI, in nsIMsgWindow aMsgWindow); */
  nsresult ConvertMsgURIToMsgURL(char *aURI, nsIMsgWindow aMsgWindow, char **_retval);

  /* nsIFile getDataFilesDir (in string dirName); */
  nsresult GetDataFilesDir(char *dirName, nsIFile *_retval);

}

