/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapMockChannel.idl
 */

module mozilla.dxpcom.nsIImapMockChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapMockChannel;


public import mozilla.dxpcom.nsIImapMockChannelD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIProgressEventSink;

public import mozilla.dxpcom.nsIProgressEventSinkD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIImapProtocol;

public import mozilla.dxpcom.nsIImapProtocolD;


/* starting wrapper class:    nsIImapMockChannel */
class nsIImapMockChannelD : public nsIChannelD {

  static const nsIID IID = NS_IIMAPMOCKCHANNEL_IID;


  alias nsIImapMockChannel InnerType;

  this(nsIImapMockChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapMockChannel opCast() {
    return inner;
  }

  void opAssign(nsIImapMockChannel value) {
    inner = value;
  }

  /* attribute nsIProgressEventSink progressEventSink; */
  nsIProgressEventSinkD  ProgressEventSink(){
    nsIProgressEventSink value;
    nsresult __result = inner.GetProgressEventSink(&value);
    CheckException(__result);
    return new nsIProgressEventSinkD(value);
  }
  void ProgressEventSink(nsIProgressEventSinkD  aProgressEventSink){
    nsIProgressEventSink value;
    nsresult __result = inner.SetProgressEventSink(value);
    CheckException(__result);
  }

  /* void GetChannelListener (out nsIStreamListener aChannelListener); */
  void GetChannelListener(out nsIStreamListenerD aChannelListener){
    nsIStreamListener _aChannelListener;
    nsresult __result = inner.GetChannelListener(&_aChannelListener);
    CheckException(__result);
    aChannelListener = _aChannelListener ? new nsIStreamListenerD(_aChannelListener) : null;
  }

  /* void GetChannelContext (out nsISupports aChannelContext); */
  void GetChannelContext(out nsISupportsD aChannelContext){
    nsISupports _aChannelContext;
    nsresult __result = inner.GetChannelContext(&_aChannelContext);
    CheckException(__result);
    aChannelContext = _aChannelContext ? new nsISupportsD(_aChannelContext) : null;
  }

  /* void Close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /* void setImapProtocol (in nsIImapProtocol aProtocol); */
  void SetImapProtocol(nsIImapProtocolD aProtocol){
    nsresult __result = inner.SetImapProtocol(aProtocol ? cast(nsIImapProtocol)aProtocol : null);
    CheckException(__result);
  }

  /* [noscript] void setSecurityInfo (in nsISupports securityInfo); */
  void SetSecurityInfo(nsISupportsD securityInfo){
    nsresult __result = inner.SetSecurityInfo(securityInfo ? cast(nsISupports)securityInfo : null);
    CheckException(__result);
  }

  /* void setURI (in nsIURI uri); */
  void SetURI(nsIURID uri){
    nsresult __result = inner.SetURI(uri ? cast(nsIURI)uri : null);
    CheckException(__result);
  }

private:
  nsIImapMockChannel inner;

}

