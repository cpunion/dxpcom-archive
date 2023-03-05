/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCopyService.idl
 */

module mozilla.xpcom.nsIMsgCopyService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.xpcom.nsIMsgCopyServiceListener;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsITransactionManager; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsIMsgCopyService */
const char[] NS_IMSGCOPYSERVICE_IID_STR = "c9255b88-5e0f-4614-8fdc-ebb97a0f333e";

const nsIID NS_IMSGCOPYSERVICE_IID= 
  {0xc9255b88, 0x5e0f, 0x4614, 
    [ 0x8f, 0xdc, 0xeb, 0xb9, 0x7a, 0x0f, 0x33, 0x3e ]};

extern(Windows)
interface nsIMsgCopyService : nsISupports {
  static const char[] IID_STR = NS_IMSGCOPYSERVICE_IID_STR;
  static const nsIID IID = NS_IMSGCOPYSERVICE_IID;

  /**
     *
     */
  /* void CopyMessages (in nsIMsgFolder srcFolder, in nsISupportsArray messages, in nsIMsgFolder dstFolder, in boolean isMove, in nsIMsgCopyServiceListener listener, in nsIMsgWindow msgWindow, in boolean allowUndo); */
  nsresult CopyMessages(nsIMsgFolder srcFolder, nsISupportsArray messages, nsIMsgFolder dstFolder, PRBool isMove, nsIMsgCopyServiceListener listener, nsIMsgWindow msgWindow, PRBool allowUndo);

  /**
     *
     */
  /* void CopyFolders (in nsISupportsArray folders, in nsIMsgFolder dstFolder, in boolean isMove, in nsIMsgCopyServiceListener listener, in nsIMsgWindow msgWindow); */
  nsresult CopyFolders(nsISupportsArray folders, nsIMsgFolder dstFolder, PRBool isMove, nsIMsgCopyServiceListener listener, nsIMsgWindow msgWindow);

  /* void CopyFileMessage (in nsIFileSpec fileSpec, in nsIMsgFolder dstFolder, in nsIMsgDBHdr msgToReplace, in boolean isDraftOrTemplate, in unsigned long aMsgFlags, in nsIMsgCopyServiceListener listener, in nsIMsgWindow msgWindow); */
  nsresult CopyFileMessage(nsIFileSpec fileSpec, nsIMsgFolder dstFolder, nsIMsgDBHdr msgToReplace, PRBool isDraftOrTemplate, PRUint32 aMsgFlags, nsIMsgCopyServiceListener listener, nsIMsgWindow msgWindow);

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
  nsresult NotifyCompletion(nsISupports aSupport, nsIMsgFolder dstFolder, nsresult result);

}

