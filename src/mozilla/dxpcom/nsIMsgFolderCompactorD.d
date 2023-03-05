/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolderCompactor.idl
 */

module mozilla.dxpcom.nsIMsgFolderCompactorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFolderCompactor;


public import mozilla.dxpcom.nsIMsgFolderCompactorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIMsgFolderCompactor */
class nsIMsgFolderCompactorD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFOLDERCOMPACTOR_IID;


  alias nsIMsgFolderCompactor InnerType;

  this(nsIMsgFolderCompactor intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFolderCompactor opCast() {
    return inner;
  }

  void opAssign(nsIMsgFolderCompactor value) {
    inner = value;
  }

  /* void compact (in nsIMsgFolder aFolder, in boolean aOfflineStore, in nsIMsgWindow aMsgWindow); */
  void Compact(nsIMsgFolderD aFolder, PRBool aOfflineStore, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.Compact(aFolder ? cast(nsIMsgFolder)aFolder : null, aOfflineStore, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void compactAll (in nsISupportsArray aArrayOfFoldersToCompact, in nsIMsgWindow aMsgWindow, in boolean compactOfflineAlso, in nsISupportsArray aOfflineFolderArray); */
  void CompactAll(nsISupportsArrayD aArrayOfFoldersToCompact, nsIMsgWindowD aMsgWindow, PRBool compactOfflineAlso, nsISupportsArrayD aOfflineFolderArray){
    nsresult __result = inner.CompactAll(aArrayOfFoldersToCompact ? cast(nsISupportsArray)aArrayOfFoldersToCompact : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, compactOfflineAlso, aOfflineFolderArray ? cast(nsISupportsArray)aOfflineFolderArray : null);
    CheckException(__result);
  }

private:
  nsIMsgFolderCompactor inner;

}

