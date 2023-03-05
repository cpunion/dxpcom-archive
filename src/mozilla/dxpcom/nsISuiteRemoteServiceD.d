/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISuiteRemoteService.idl
 */

module mozilla.dxpcom.nsISuiteRemoteServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISuiteRemoteService;


public import mozilla.dxpcom.nsISuiteRemoteServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsISuiteRemoteService */
/**
 * Responds to incoming xremote requests for the mozilla suite.
 */
class nsISuiteRemoteServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISUITEREMOTESERVICE_IID;


  alias nsISuiteRemoteService InnerType;

  this(nsISuiteRemoteService intr){
    super(intr);
    this.inner = intr;
  }

  nsISuiteRemoteService opCast() {
    return inner;
  }

  void opAssign(nsISuiteRemoteService value) {
    inner = value;
  }

  /**
   * Parse the command given.
   *
   * @param aCommand The command string, e.g. "openURL(http://www.foo.com/)"
   * @param aContext The domwindow to target the command at. May be null, and
   *                 may be ignored.
   */
  /* void parseCommand (in string aCommand, in nsIDOMWindow aContext); */
  void ParseCommand(char*aCommand, nsIDOMWindowD aContext){
    nsresult __result = inner.ParseCommand(aCommand, aContext ? cast(nsIDOMWindow)aContext : null);
    CheckException(__result);
  }

private:
  nsISuiteRemoteService inner;

}

