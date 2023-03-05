/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMovemailService.idl
 */

module mozilla.dxpcom.nsIMovemailServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMovemailService;


public import mozilla.dxpcom.nsIMovemailServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.dxpcom.nsIUrlListenerD;
public import mozilla.xpcom.nsIMovemailIncomingServer;
public import mozilla.dxpcom.nsIMovemailIncomingServerD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;


/* starting wrapper class:    nsIMovemailService */
class nsIMovemailServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMOVEMAILSERVICE_IID;


  alias nsIMovemailService InnerType;

  this(nsIMovemailService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMovemailService opCast() {
    return inner;
  }

  void opAssign(nsIMovemailService value) {
    inner = value;
  }

  /* nsIURI GetNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder aMsgFolder, in nsIMovemailIncomingServer movemailServer); */
  nsIURID  GetNewMail(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener, nsIMsgFolderD aMsgFolder, nsIMovemailIncomingServerD movemailServer){
    nsIURI _retval;
    nsresult __result = inner.GetNewMail(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgFolder ? cast(nsIMsgFolder)aMsgFolder : null, movemailServer ? cast(nsIMovemailIncomingServer)movemailServer : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI CheckForNewMail (in nsIUrlListener aUrlListener, in nsIMsgFolder inbox, in nsIMovemailIncomingServer movemailServer); */
  nsIURID  CheckForNewMail(nsIUrlListenerD aUrlListener, nsIMsgFolderD inbox, nsIMovemailIncomingServerD movemailServer){
    nsIURI _retval;
    nsresult __result = inner.CheckForNewMail(aUrlListener ? cast(nsIUrlListener)aUrlListener : null, inbox ? cast(nsIMsgFolder)inbox : null, movemailServer ? cast(nsIMovemailIncomingServer)movemailServer : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIMovemailService inner;

}

