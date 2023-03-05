/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgLocalMailFolder.idl
 */

module mozilla.xpcom.nsIMsgLocalMailFolder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgCopyServiceListener; /* forward declaration */


/* starting interface:    nsIMsgLocalMailFolder */
const char[] NS_IMSGLOCALMAILFOLDER_IID_STR = "260398bd-9152-4b10-af4e-3126dcd37837";

const nsIID NS_IMSGLOCALMAILFOLDER_IID= 
  {0x260398bd, 0x9152, 0x4b10, 
    [ 0xaf, 0x4e, 0x31, 0x26, 0xdc, 0xd3, 0x78, 0x37 ]};

extern(Windows)
interface nsIMsgLocalMailFolder : nsISupports {
  static const char[] IID_STR = NS_IMSGLOCALMAILFOLDER_IID_STR;
  static const nsIID IID = NS_IMSGLOCALMAILFOLDER_IID;

  /**
   * set the default flags on the subfolders of this folder, such as
   * Drafts, Templates, etc
   * you should bitwise OR all the flags all mailboxes you want to flag,
   * this function will be smart and find the right names.
   * like MSG_FOLDER_FLAG_INBOX | MSG_FOLDER_FLAG_DRAFTS | etc
   */
  /* void setFlagsOnDefaultMailboxes (in unsigned long flags); */
  nsresult SetFlagsOnDefaultMailboxes(PRUint32 flags);

  /* nsIMsgDatabase getDatabaseWOReparse (); */
  nsresult GetDatabaseWOReparse(nsIMsgDatabase *_retval);

  /* nsIMsgDatabase getDatabaseWithReparse (in nsIUrlListener aReparseUrlListener, in nsIMsgWindow aMsgWindow); */
  nsresult GetDatabaseWithReparse(nsIUrlListener aReparseUrlListener, nsIMsgWindow aMsgWindow, nsIMsgDatabase *_retval);

  /* void parseFolder (in nsIMsgWindow aMsgWindow, in nsIUrlListener listener); */
  nsresult ParseFolder(nsIMsgWindow aMsgWindow, nsIUrlListener listener);

  /* void copyFolderLocal (in nsIMsgFolder srcFolder, in boolean isMove, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  nsresult CopyFolderLocal(nsIMsgFolder srcFolder, PRBool isMove, nsIMsgWindow msgWindow, nsIMsgCopyServiceListener listener);

  /* void copyAllSubFolders (in nsIMsgFolder srcFolder, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  nsresult CopyAllSubFolders(nsIMsgFolder srcFolder, nsIMsgWindow msgWindow, nsIMsgCopyServiceListener listener);

  /* void onCopyCompleted (in nsISupports aSrcSupport, in boolean aMoveCopySucceeded); */
  nsresult OnCopyCompleted(nsISupports aSrcSupport, PRBool aMoveCopySucceeded);

  /* attribute boolean checkForNewMessagesAfterParsing; */
  nsresult GetCheckForNewMessagesAfterParsing(PRBool *aCheckForNewMessagesAfterParsing);
  nsresult SetCheckForNewMessagesAfterParsing(PRBool aCheckForNewMessagesAfterParsing);

  /* [noscript] void markMsgsOnPop3Server (in nsISupportsArray aMessages, in PRInt32 aMark); */
  nsresult MarkMsgsOnPop3Server(nsISupportsArray aMessages, PRInt32 aMark);

  /* void refreshSizeOnDisk (); */
  nsresult RefreshSizeOnDisk();

  /* void addMessage (in string aMessage); */
  nsresult AddMessage(char *aMessage);

  /**
   * functions for updating the UI while running DownloadMessagesForOffline:
   * delete the old message before adding its newly downloaded body, and
   * select the new message after it has replaced the old one
   */
  /* void deleteDownloadMsg (in nsIMsgDBHdr aMsgHdr, out boolean aDoSelect); */
  nsresult DeleteDownloadMsg(nsIMsgDBHdr aMsgHdr, PRBool *aDoSelect);

  /* void selectDownloadMsg (); */
  nsresult SelectDownloadMsg();

  /* void notifyDelete (); */
  nsresult NotifyDelete();

  /**
   * functions for grubbing thru a folder to find the Uidl for a
   * given msgDBHdr
   */
  /* [noscript] void getFolderScanState (in nsLocalFolderScanState aState); */
  nsresult GetFolderScanState(nsLocalFolderScanState * aState);

  /* [noscript] void getUidlFromFolder (in nsLocalFolderScanState aState, in nsIMsgDBHdr aMsgHdr); */
  nsresult GetUidlFromFolder(nsLocalFolderScanState * aState, nsIMsgDBHdr aMsgHdr);

  /* boolean warnIfLocalFileTooBig (in nsIMsgWindow aWindow); */
  nsresult WarnIfLocalFileTooBig(nsIMsgWindow aWindow, PRBool *_retval);

}

