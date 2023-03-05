/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMovemailIncomingServer.idl
 */

module mozilla.dxpcom.nsIMovemailIncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMovemailIncomingServer;


public import mozilla.dxpcom.nsIMovemailIncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMovemailIncomingServer */
class nsIMovemailIncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_IMOVEMAILINCOMINGSERVER_IID;


  alias nsIMovemailIncomingServer InnerType;

  this(nsIMovemailIncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsIMovemailIncomingServer opCast() {
    return inner;
  }

  void opAssign(nsIMovemailIncomingServer value) {
    inner = value;
  }

private:
  nsIMovemailIncomingServer inner;

}

