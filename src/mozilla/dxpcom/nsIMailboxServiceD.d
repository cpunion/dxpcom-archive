/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMailboxService.idl
 */

module mozilla.dxpcom.nsIMailboxServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMailboxService;


public import mozilla.dxpcom.nsIMailboxServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIMailboxService */
class nsIMailboxServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMAILBOXSERVICE_IID;


  alias nsIMailboxService InnerType;

  this(nsIMailboxService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMailboxService opCast() {
    return inner;
  }

  void opAssign(nsIMailboxService value) {
    inner = value;
  }

  /* [noscript] nsIURI ParseMailbox (in nsIMsgWindow aMsgWindow, in nsFileSpec aMailboxPath, in nsIStreamListener aMailboxParser, in nsIUrlListener aUrlListener); */
  nsIURID  ParseMailbox(nsIMsgWindowD aMsgWindow, nsFileSpec * aMailboxPath, nsIStreamListenerD aMailboxParser, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.ParseMailbox(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aMailboxPath, aMailboxParser ? cast(nsIStreamListener)aMailboxParser : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIMailboxService inner;

}

