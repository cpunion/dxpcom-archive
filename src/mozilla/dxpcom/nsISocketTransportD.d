/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketTransport.idl
 */

module mozilla.dxpcom.nsISocketTransportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISocketTransport;


public import mozilla.dxpcom.nsISocketTransportD;

public import mozilla.xpcom.nsITransport;
public import mozilla.dxpcom.nsITransportD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsISocketTransport */
/**
 * nsISocketTransport
 *
 * NOTE: This is a free-threaded interface, meaning that the methods on
 * this interface may be called from any thread.
 */
class nsISocketTransportD : public nsITransportD {

  static const nsIID IID = NS_ISOCKETTRANSPORT_IID;


  alias nsISocketTransport InnerType;

  this(nsISocketTransport intr){
    super(intr);
    this.inner = intr;
  }

  nsISocketTransport opCast() {
    return inner;
  }

  void opAssign(nsISocketTransport value) {
    inner = value;
  }

  /**
     * Get the host for the underlying socket connection.
     */
  /* readonly attribute AUTF8String host; */
  char[] Host(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHost(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Get the port for the underlying socket connection.
     */
  /* readonly attribute long port; */
  PRInt32 Port(){
    PRInt32 value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return value;
  }

  /** 
     * Returns the IP address of the socket connection peer. This
     * attribute is defined only once a connection has been established.
     */
  /* [noscript] PRNetAddr getPeerAddr (); */
  PRNetAddr GetPeerAddr(){
PRNetAddr _retval;
    nsresult __result = inner.GetPeerAddr(&_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
     * Returns the IP address of the initiating end. This attribute
     * is defined only once a connection has been established.
     */
  /* [noscript] PRNetAddr getSelfAddr (); */
  PRNetAddr GetSelfAddr(){
PRNetAddr _retval;
    nsresult __result = inner.GetSelfAddr(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Security info object returned from the secure socket provider.  This
     * object supports nsISSLSocketControl, nsITransportSecurityInfo, and
     * possibly other interfaces.
     */
  /* readonly attribute nsISupports securityInfo; */
  nsISupportsD  SecurityInfo(){
    nsISupports value;
    nsresult __result = inner.GetSecurityInfo(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /**
     * Security notification callbacks passed to the secure socket provider
     * via nsISSLSocketControl at socket creation time.
     *
     * NOTE: this attribute cannot be changed once a stream has been opened.
     */
  /* attribute nsIInterfaceRequestor securityCallbacks; */
  nsIInterfaceRequestorD  SecurityCallbacks(){
    nsIInterfaceRequestor value;
    nsresult __result = inner.GetSecurityCallbacks(&value);
    CheckException(__result);
    return new nsIInterfaceRequestorD(value);
  }
  void SecurityCallbacks(nsIInterfaceRequestorD  aSecurityCallbacks){
    nsIInterfaceRequestor value;
    nsresult __result = inner.SetSecurityCallbacks(value);
    CheckException(__result);
  }

  /**
     * Test if this socket transport is (still) connected.
     */
  /* boolean isAlive (); */
  PRBool IsAlive(){
    PRBool _retval;
    nsresult __result = inner.IsAlive(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Socket timeouts in seconds.  To specify no timeout, pass PR_UINT32_MAX
     * as aValue to setTimeout.  The implementation may truncate timeout values
     * to a smaller range of values (e.g., 0 to 0xFFFF).
     */
  /* unsigned long getTimeout (in unsigned long aType); */
  PRUint32 GetTimeout(PRUint32 aType){
    PRUint32 _retval;
    nsresult __result = inner.GetTimeout(aType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setTimeout (in unsigned long aType, in unsigned long aValue); */
  void SetTimeout(PRUint32 aType, PRUint32 aValue){
    nsresult __result = inner.SetTimeout(aType, aValue);
    CheckException(__result);
  }

  /**
     * Values for the aType parameter passed to get/setTimeout.
     */
  enum { TIMEOUT_CONNECT = 0U }

  enum { TIMEOUT_READ_WRITE = 1U }

  /**
     * nsITransportEventSink status codes.
     *
     * Although these look like XPCOM error codes and are passed in an nsresult
     * variable, they are *not* error codes.  Note that while they *do* overlap
     * with existing error codes in Necko, these status codes are confined
     * within a very limited context where no error codes may appear, so there
     * is no ambiguity.
     *
     * The values of these status codes must never change.
     *
     * The status codes appear in near-chronological order (not in numeric
     * order).  STATUS_RESOLVING may be skipped if the host does not need to be
     * resolved.  STATUS_WAITING_FOR is an optional status code, which the impl
     * of this interface may choose not to generate.
     */
  enum { STATUS_RESOLVING = 2152398851U }

  enum { STATUS_CONNECTING_TO = 2152398855U }

  enum { STATUS_CONNECTED_TO = 2152398852U }

  enum { STATUS_SENDING_TO = 2152398853U }

  enum { STATUS_WAITING_FOR = 2152398858U }

  enum { STATUS_RECEIVING_FROM = 2152398854U }

private:
  nsISocketTransport inner;

}

