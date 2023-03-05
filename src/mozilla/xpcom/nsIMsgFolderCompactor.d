/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolderCompactor.idl
 */

module mozilla.xpcom.nsIMsgFolderCompactor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsIMsgFolderCompactor */
const char[] NS_IMSGFOLDERCOMPACTOR_IID_STR = "2af7d7a2-e5b6-11d4-a5b7-0060b0fc04b7";

const nsIID NS_IMSGFOLDERCOMPACTOR_IID= 
  {0x2af7d7a2, 0xe5b6, 0x11d4, 
    [ 0xa5, 0xb7, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgFolderCompactor : nsISupports {
  static const char[] IID_STR = NS_IMSGFOLDERCOMPACTOR_IID_STR;
  static const nsIID IID = NS_IMSGFOLDERCOMPACTOR_IID;

  /* void compact (in nsIMsgFolder aFolder, in boolean aOfflineStore, in nsIMsgWindow aMsgWindow); */
  nsresult Compact(nsIMsgFolder aFolder, PRBool aOfflineStore, nsIMsgWindow aMsgWindow);

  /* void compactAll (in nsISupportsArray aArrayOfFoldersToCompact, in nsIMsgWindow aMsgWindow, in boolean compactOfflineAlso, in nsISupportsArray aOfflineFolderArray); */
  nsresult CompactAll(nsISupportsArray aArrayOfFoldersToCompact, nsIMsgWindow aMsgWindow, PRBool compactOfflineAlso, nsISupportsArray aOfflineFolderArray);

}

