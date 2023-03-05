/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocalMailIncomingServer.idl
 */

module mozilla.dxpcom.nsILocalMailIncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILocalMailIncomingServer;


public import mozilla.dxpcom.nsILocalMailIncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsILocalMailIncomingServer */
class nsILocalMailIncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_ILOCALMAILINCOMINGSERVER_IID;


  alias nsILocalMailIncomingServer InnerType;

  this(nsILocalMailIncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsILocalMailIncomingServer opCast() {
    return inner;
  }

  void opAssign(nsILocalMailIncomingServer value) {
    inner = value;
  }

  /* void createDefaultMailboxes (in nsIFileSpec path); */
  void CreateDefaultMailboxes(nsIFileSpecD path){
    nsresult __result = inner.CreateDefaultMailboxes(path ? cast(nsIFileSpec)path : null);
    CheckException(__result);
  }

  /* void setFlagsOnDefaultMailboxes (); */
  void SetFlagsOnDefaultMailboxes(){
    nsresult __result = inner.SetFlagsOnDefaultMailboxes();
    CheckException(__result);
  }

  /* nsIURI getNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder aInbox); */
  nsIURID  GetNewMail(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener, nsIMsgFolderD aInbox){
    nsIURI _retval;
    nsresult __result = inner.GetNewMail(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aInbox ? cast(nsIMsgFolder)aInbox : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsILocalMailIncomingServer inner;

}

