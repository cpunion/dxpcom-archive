/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3Service.idl
 */

module mozilla.dxpcom.nsIPop3ServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPop3Service;


public import mozilla.dxpcom.nsIPop3ServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.dxpcom.nsIUrlListenerD;
public import mozilla.xpcom.nsIPop3IncomingServer;
public import mozilla.dxpcom.nsIPop3IncomingServerD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;


/* starting wrapper class:    nsIPop3Service */
class nsIPop3ServiceD : public nsISupportsD {

  static const nsIID IID = NS_IPOP3SERVICE_IID;


  alias nsIPop3Service InnerType;

  this(nsIPop3Service intr){
    super(intr);
    this.inner = intr;
  }

  nsIPop3Service opCast() {
    return inner;
  }

  void opAssign(nsIPop3Service value) {
    inner = value;
  }

  /* nsIURI GetNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder aInbox, in nsIPop3IncomingServer popServer); */
  nsIURID  GetNewMail(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener, nsIMsgFolderD aInbox, nsIPop3IncomingServerD popServer){
    nsIURI _retval;
    nsresult __result = inner.GetNewMail(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aInbox ? cast(nsIMsgFolder)aInbox : null, popServer ? cast(nsIPop3IncomingServer)popServer : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI CheckForNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder inbox, in nsIPop3IncomingServer popServer); */
  nsIURID  CheckForNewMail(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener, nsIMsgFolderD inbox, nsIPop3IncomingServerD popServer){
    nsIURI _retval;
    nsresult __result = inner.CheckForNewMail(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, inbox ? cast(nsIMsgFolder)inbox : null, popServer ? cast(nsIPop3IncomingServer)popServer : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIPop3Service inner;

}

