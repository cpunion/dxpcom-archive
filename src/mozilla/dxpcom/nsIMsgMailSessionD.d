/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailSession.idl
 */

module mozilla.dxpcom.nsIMsgMailSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgMailSession;


public import mozilla.dxpcom.nsIMsgMailSessionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFolderListener;
public import mozilla.dxpcom.nsIFolderListenerD;
public import mozilla.xpcom.nsIMsgWindow;
public import mozilla.dxpcom.nsIMsgWindowD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIAtom;
public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIMsgMailSession */
class nsIMsgMailSessionD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMAILSESSION_IID;


  alias nsIMsgMailSession InnerType;

  this(nsIMsgMailSession intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMailSession opCast() {
    return inner;
  }

  void opAssign(nsIMsgMailSession value) {
    inner = value;
  }

  /* void Shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

  /* void AddFolderListener (in nsIFolderListener listener, in folderListenerNotifyFlagValue notifyFlags); */
  void AddFolderListener(nsIFolderListenerD listener, folderListenerNotifyFlagValue notifyFlags){
    nsresult __result = inner.AddFolderListener(listener ? cast(nsIFolderListener)listener : null, notifyFlags);
    CheckException(__result);
  }

  /* void RemoveFolderListener (in nsIFolderListener listener); */
  void RemoveFolderListener(nsIFolderListenerD listener){
    nsresult __result = inner.RemoveFolderListener(listener ? cast(nsIFolderListener)listener : null);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgWindow topmostMsgWindow; */
  nsIMsgWindowD  TopmostMsgWindow(){
    nsIMsgWindow value;
    nsresult __result = inner.GetTopmostMsgWindow(&value);
    CheckException(__result);
    return new nsIMsgWindowD(value);
  }

  /* void AddMsgWindow (in nsIMsgWindow msgWindow); */
  void AddMsgWindow(nsIMsgWindowD msgWindow){
    nsresult __result = inner.AddMsgWindow(msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void RemoveMsgWindow (in nsIMsgWindow msgWindow); */
  void RemoveMsgWindow(nsIMsgWindowD msgWindow){
    nsresult __result = inner.RemoveMsgWindow(msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* readonly attribute nsISupportsArray msgWindowsArray; */
  nsISupportsArrayD  MsgWindowsArray(){
    nsISupportsArray value;
    nsresult __result = inner.GetMsgWindowsArray(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /* boolean IsFolderOpenInWindow (in nsIMsgFolder folder); */
  PRBool IsFolderOpenInWindow(nsIMsgFolderD folder){
    PRBool _retval;
    nsresult __result = inner.IsFolderOpenInWindow(folder ? cast(nsIMsgFolder)folder : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string ConvertMsgURIToMsgURL (in string aURI, in nsIMsgWindow aMsgWindow); */
  char* ConvertMsgURIToMsgURL(char*aURI, nsIMsgWindowD aMsgWindow){
    char* _retval;
    nsresult __result = inner.ConvertMsgURIToMsgURL(aURI, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIFile getDataFilesDir (in string dirName); */
  nsIFileD  GetDataFilesDir(char*dirName){
    nsIFile _retval;
    nsresult __result = inner.GetDataFilesDir(dirName, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

private:
  nsIMsgMailSession inner;

}

