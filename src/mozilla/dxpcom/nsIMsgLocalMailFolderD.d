/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgLocalMailFolder.idl
 */

module mozilla.dxpcom.nsIMsgLocalMailFolderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgLocalMailFolder;


public import mozilla.dxpcom.nsIMsgLocalMailFolderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgCopyServiceListener;

public import mozilla.dxpcom.nsIMsgCopyServiceListenerD;


/* starting wrapper class:    nsIMsgLocalMailFolder */
class nsIMsgLocalMailFolderD : public nsISupportsD {

  static const nsIID IID = NS_IMSGLOCALMAILFOLDER_IID;


  alias nsIMsgLocalMailFolder InnerType;

  this(nsIMsgLocalMailFolder intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgLocalMailFolder opCast() {
    return inner;
  }

  void opAssign(nsIMsgLocalMailFolder value) {
    inner = value;
  }

  /**
   * set the default flags on the subfolders of this folder, such as
   * Drafts, Templates, etc
   * you should bitwise OR all the flags all mailboxes you want to flag,
   * this function will be smart and find the right names.
   * like MSG_FOLDER_FLAG_INBOX | MSG_FOLDER_FLAG_DRAFTS | etc
   */
  /* void setFlagsOnDefaultMailboxes (in unsigned long flags); */
  void SetFlagsOnDefaultMailboxes(PRUint32 flags){
    nsresult __result = inner.SetFlagsOnDefaultMailboxes(flags);
    CheckException(__result);
  }

  /* nsIMsgDatabase getDatabaseWOReparse (); */
  nsIMsgDatabaseD  GetDatabaseWOReparse(){
    nsIMsgDatabase _retval;
    nsresult __result = inner.GetDatabaseWOReparse(&_retval);
    CheckException(__result);
    return new nsIMsgDatabaseD(_retval);
  }

  /* nsIMsgDatabase getDatabaseWithReparse (in nsIUrlListener aReparseUrlListener, in nsIMsgWindow aMsgWindow); */
  nsIMsgDatabaseD  GetDatabaseWithReparse(nsIUrlListenerD aReparseUrlListener, nsIMsgWindowD aMsgWindow){
    nsIMsgDatabase _retval;
    nsresult __result = inner.GetDatabaseWithReparse(aReparseUrlListener ? cast(nsIUrlListener)aReparseUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return new nsIMsgDatabaseD(_retval);
  }

  /* void parseFolder (in nsIMsgWindow aMsgWindow, in nsIUrlListener listener); */
  void ParseFolder(nsIMsgWindowD aMsgWindow, nsIUrlListenerD listener){
    nsresult __result = inner.ParseFolder(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, listener ? cast(nsIUrlListener)listener : null);
    CheckException(__result);
  }

  /* void copyFolderLocal (in nsIMsgFolder srcFolder, in boolean isMove, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  void CopyFolderLocal(nsIMsgFolderD srcFolder, PRBool isMove, nsIMsgWindowD msgWindow, nsIMsgCopyServiceListenerD listener){
    nsresult __result = inner.CopyFolderLocal(srcFolder ? cast(nsIMsgFolder)srcFolder : null, isMove, msgWindow ? cast(nsIMsgWindow)msgWindow : null, listener ? cast(nsIMsgCopyServiceListener)listener : null);
    CheckException(__result);
  }

  /* void copyAllSubFolders (in nsIMsgFolder srcFolder, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  void CopyAllSubFolders(nsIMsgFolderD srcFolder, nsIMsgWindowD msgWindow, nsIMsgCopyServiceListenerD listener){
    nsresult __result = inner.CopyAllSubFolders(srcFolder ? cast(nsIMsgFolder)srcFolder : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, listener ? cast(nsIMsgCopyServiceListener)listener : null);
    CheckException(__result);
  }

  /* void onCopyCompleted (in nsISupports aSrcSupport, in boolean aMoveCopySucceeded); */
  void OnCopyCompleted(nsISupportsD aSrcSupport, PRBool aMoveCopySucceeded){
    nsresult __result = inner.OnCopyCompleted(aSrcSupport ? cast(nsISupports)aSrcSupport : null, aMoveCopySucceeded);
    CheckException(__result);
  }

  /* attribute boolean checkForNewMessagesAfterParsing; */
  PRBool CheckForNewMessagesAfterParsing(){
    PRBool value;
    nsresult __result = inner.GetCheckForNewMessagesAfterParsing(&value);
    CheckException(__result);
    return value;
  }
  void CheckForNewMessagesAfterParsing(PRBool aCheckForNewMessagesAfterParsing){
    nsresult __result = inner.SetCheckForNewMessagesAfterParsing(aCheckForNewMessagesAfterParsing);
    CheckException(__result);
  }

  /* [noscript] void markMsgsOnPop3Server (in nsISupportsArray aMessages, in PRInt32 aMark); */
  void MarkMsgsOnPop3Server(nsISupportsArrayD aMessages, PRInt32 aMark){
    nsresult __result = inner.MarkMsgsOnPop3Server(aMessages ? cast(nsISupportsArray)aMessages : null, aMark);
    CheckException(__result);
  }

  /* void refreshSizeOnDisk (); */
  void RefreshSizeOnDisk(){
    nsresult __result = inner.RefreshSizeOnDisk();
    CheckException(__result);
  }

  /* void addMessage (in string aMessage); */
  void AddMessage(char*aMessage){
    nsresult __result = inner.AddMessage(aMessage);
    CheckException(__result);
  }

  /**
   * functions for updating the UI while running DownloadMessagesForOffline:
   * delete the old message before adding its newly downloaded body, and
   * select the new message after it has replaced the old one
   */
  /* void deleteDownloadMsg (in nsIMsgDBHdr aMsgHdr, out boolean aDoSelect); */
  void DeleteDownloadMsg(nsIMsgDBHdrD aMsgHdr, out PRBool aDoSelect){
    nsresult __result = inner.DeleteDownloadMsg(aMsgHdr ? cast(nsIMsgDBHdr)aMsgHdr : null, &aDoSelect);
    CheckException(__result);
  }

  /* void selectDownloadMsg (); */
  void SelectDownloadMsg(){
    nsresult __result = inner.SelectDownloadMsg();
    CheckException(__result);
  }

  /* void notifyDelete (); */
  void NotifyDelete(){
    nsresult __result = inner.NotifyDelete();
    CheckException(__result);
  }

  /**
   * functions for grubbing thru a folder to find the Uidl for a
   * given msgDBHdr
   */
  /* [noscript] void getFolderScanState (in nsLocalFolderScanState aState); */
  void GetFolderScanState(nsLocalFolderScanState * aState){
    nsresult __result = inner.GetFolderScanState(aState);
    CheckException(__result);
  }

  /* [noscript] void getUidlFromFolder (in nsLocalFolderScanState aState, in nsIMsgDBHdr aMsgHdr); */
  void GetUidlFromFolder(nsLocalFolderScanState * aState, nsIMsgDBHdrD aMsgHdr){
    nsresult __result = inner.GetUidlFromFolder(aState, aMsgHdr ? cast(nsIMsgDBHdr)aMsgHdr : null);
    CheckException(__result);
  }

  /* boolean warnIfLocalFileTooBig (in nsIMsgWindow aWindow); */
  PRBool WarnIfLocalFileTooBig(nsIMsgWindowD aWindow){
    PRBool _retval;
    nsresult __result = inner.WarnIfLocalFileTooBig(aWindow ? cast(nsIMsgWindow)aWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgLocalMailFolder inner;

}

