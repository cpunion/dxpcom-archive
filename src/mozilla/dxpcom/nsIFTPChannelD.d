/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFTPChannel.idl
 */

module mozilla.dxpcom.nsIFTPChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFTPChannel;


public import mozilla.dxpcom.nsIFTPChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.dxpcom.nsIRequestObserverD;


/* starting wrapper class:    nsIFTPChannel */
class nsIFTPChannelD : public nsIChannelD {

  static const nsIID IID = NS_IFTPCHANNEL_IID;


  alias nsIFTPChannel InnerType;

  this(nsIFTPChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIFTPChannel opCast() {
    return inner;
  }

  void opAssign(nsIFTPChannel value) {
    inner = value;
  }

private:
  nsIFTPChannel inner;

}


/* starting wrapper class:    nsIFTPEventSink */
class nsIFTPEventSinkD : public nsISupportsD {

  static const nsIID IID = NS_IFTPEVENTSINK_IID;


  alias nsIFTPEventSink InnerType;

  this(nsIFTPEventSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIFTPEventSink opCast() {
    return inner;
  }

  void opAssign(nsIFTPEventSink value) {
    inner = value;
  }

  /* void OnFTPControlLog (in boolean server, in string msg); */
  void OnFTPControlLog(PRBool server, char*msg){
    nsresult __result = inner.OnFTPControlLog(server, msg);
    CheckException(__result);
  }

private:
  nsIFTPEventSink inner;

}

