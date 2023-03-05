/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMessengerWindowService.idl
 */

module mozilla.dxpcom.nsIMessengerWindowServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMessengerWindowService;


public import mozilla.dxpcom.nsIMessengerWindowServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;


/* starting wrapper class:    nsIMessengerWindowService */
class nsIMessengerWindowServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMESSENGERWINDOWSERVICE_IID;


  alias nsIMessengerWindowService InnerType;

  this(nsIMessengerWindowService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMessengerWindowService opCast() {
    return inner;
  }

  void opAssign(nsIMessengerWindowService value) {
    inner = value;
  }

  /* void openMessengerWindowWithUri (in string aWindowType, in string aFolderURI, in nsMsgKey aMsgKey); */
  void OpenMessengerWindowWithUri(char*aWindowType, char*aFolderURI, nsMsgKey aMsgKey){
    nsresult __result = inner.OpenMessengerWindowWithUri(aWindowType, aFolderURI, aMsgKey);
    CheckException(__result);
  }

private:
  nsIMessengerWindowService inner;

}

