/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINoIncomingServer.idl
 */

module mozilla.dxpcom.nsINoIncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINoIncomingServer;


public import mozilla.dxpcom.nsINoIncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsINoIncomingServer */
class nsINoIncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_INOINCOMINGSERVER_IID;


  alias nsINoIncomingServer InnerType;

  this(nsINoIncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsINoIncomingServer opCast() {
    return inner;
  }

  void opAssign(nsINoIncomingServer value) {
    inner = value;
  }

  /* void copyDefaultMessages (in string folderNameOnDisk, in nsIFileSpec parentDir); */
  void CopyDefaultMessages(char*folderNameOnDisk, nsIFileSpecD parentDir){
    nsresult __result = inner.CopyDefaultMessages(folderNameOnDisk, parentDir ? cast(nsIFileSpec)parentDir : null);
    CheckException(__result);
  }

private:
  nsINoIncomingServer inner;

}

