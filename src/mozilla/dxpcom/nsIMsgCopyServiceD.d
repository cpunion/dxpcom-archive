/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCopyService.idl
 */

module mozilla.dxpcom.nsIMsgCopyServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgCopyService;


public import mozilla.dxpcom.nsIMsgCopyServiceD;

public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;
public import mozilla.xpcom.nsIMsgCopyServiceListener;
public import mozilla.dxpcom.nsIMsgCopyServiceListenerD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsITransactionManager;

public import mozilla.dxpcom.nsITransactionManagerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIMsgCopyService */
class nsIMsgCopyServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOPYSERVICE_IID;


  alias nsIMsgCopyService InnerType;

  this(nsIMsgCopyService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgCopyService opCast() {
    return inner;
  }

  void opAssign(nsIMsgCopyService value) {
    inner = value;
  }

  /**
     *
     */
  /* void CopyMessages (in nsIMsgFolder srcFolder, in nsISupportsArray messages, in nsIMsgFolder dstFolder, in boolean isMove, in nsIMsgCopyServiceListener listener, in nsIMsgWindow msgWindow, in boolean allowUndo); */
  void CopyMessages(nsIMsgFolderD srcFolder, nsISupportsArrayD messages, nsIMsgFolderD dstFolder, PRBool isMove, nsIMsgCopyServiceListenerD listener, nsIMsgWindowD msgWindow, PRBool allowUndo){
    nsresult __result = inner.CopyMessages(srcFolder ? cast(nsIMsgFolder)srcFolder : null, messages ? cast(nsISupportsArray)messages : null, dstFolder ? cast(nsIMsgFolder)dstFolder : null, isMove, listener ? cast(nsIMsgCopyServiceListener)listener : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, allowUndo);
    CheckException(__result);
  }

  /**
     *
     */
  /* void CopyFolders (in nsISupportsArray folders, in nsIMsgFolder dstFolder, in boolean isMove, in nsIMsgCopyServiceListener listener, in nsIMsgWindow msgWindow); */
  void CopyFolders(nsISupportsArrayD folders, nsIMsgFolderD dstFolder, PRBool isMove, nsIMsgCopyServiceListenerD listener, nsIMsgWindowD msgWindow){
    nsresult __result = inner.CopyFolders(folders ? cast(nsISupportsArray)folders : null, dstFolder ? cast(nsIMsgFolder)dstFolder : null, isMove, listener ? cast(nsIMsgCopyServiceListener)listener : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void CopyFileMessage (in nsIFileSpec fileSpec, in nsIMsgFolder dstFolder, in nsIMsgDBHdr msgToReplace, in boolean isDraftOrTemplate, in unsigned long aMsgFlags, in nsIMsgCopyServiceListener listener, in nsIMsgWindow msgWindow); */
  void CopyFileMessage(nsIFileSpecD fileSpec, nsIMsgFolderD dstFolder, nsIMsgDBHdrD msgToReplace, PRBool isDraftOrTemplate, PRUint32 aMsgFlags, nsIMsgCopyServiceListenerD listener, nsIMsgWindowD msgWindow){
    nsresult __result = inner.CopyFileMessage(fileSpec ? cast(nsIFileSpec)fileSpec : null, dstFolder ? cast(nsIMsgFolder)dstFolder : null, msgToReplace ? cast(nsIMsgDBHdr)msgToReplace : null, isDraftOrTemplate, aMsgFlags, listener ? cast(nsIMsgCopyServiceListener)listener : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /**
     * Notify the message copy service that the destination folder has finished
     * it's messages copying operation so that the copy service can continue
     * copying the rest of the messages if there are more to copy with.
     * aSupport and dstFolder uniquely identify a copy service request.
     *
     * aSupport -- the originator of CopyMessages or CopyFileMessage; it can
     *             be either a nsIMsgFolder or a nsIFileSpec
     * dstFolder -- the destination folder which performs the copy operation
     * result -- the result of the copy operation
     */
  /* void NotifyCompletion (in nsISupports aSupport, in nsIMsgFolder dstFolder, in nsresult result); */
  void NotifyCompletion(nsISupportsD aSupport, nsIMsgFolderD dstFolder, nsresult result){
    nsresult __result = inner.NotifyCompletion(aSupport ? cast(nsISupports)aSupport : null, dstFolder ? cast(nsIMsgFolder)dstFolder : null, result);
    CheckException(__result);
  }

private:
  nsIMsgCopyService inner;

}

