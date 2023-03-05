/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3Protocol.idl
 */

module mozilla.dxpcom.nsIPop3ProtocolD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPop3Protocol;


public import mozilla.dxpcom.nsIPop3ProtocolD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPop3Protocol */
class nsIPop3ProtocolD : public nsISupportsD {

  static const nsIID IID = NS_IPOP3PROTOCOL_IID;


  alias nsIPop3Protocol InnerType;

  this(nsIPop3Protocol intr){
    super(intr);
    this.inner = intr;
  }

  nsIPop3Protocol opCast() {
    return inner;
  }

  void opAssign(nsIPop3Protocol value) {
    inner = value;
  }

  /* [noscript] void markMessages (in nsVoidArray aUidl); */
  void MarkMessages(nsVoidArray * aUidl){
    nsresult __result = inner.MarkMessages(aUidl);
    CheckException(__result);
  }

  /* boolean checkMessage (in string aUidl); */
  PRBool CheckMessage(char*aUidl){
    PRBool _retval;
    nsresult __result = inner.CheckMessage(aUidl, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIPop3Protocol inner;

}

