/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketTransport.idl
 */

module mozilla.xpcom.nsISocketTransport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsITransport;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsISocketTransport */
const char[] NS_ISOCKETTRANSPORT_IID_STR = "66418cc8-5f5d-4f52-a7f9-db8fb3b2cfe6";

const nsIID NS_ISOCKETTRANSPORT_IID= 
  {0x66418cc8, 0x5f5d, 0x4f52, 
    [ 0xa7, 0xf9, 0xdb, 0x8f, 0xb3, 0xb2, 0xcf, 0xe6 ]};

/**
 * nsISocketTransport
 *
 * NOTE: This is a free-threaded interface, meaning that the methods on
 * this interface may be called from any thread.
 */
extern(Windows)
interface nsISocketTransport : nsITransport {
  static const char[] IID_STR = NS_ISOCKETTRANSPORT_IID_STR;
  static const nsIID IID = NS_ISOCKETTRANSPORT_IID;

  /**
     * Get the host for the underlying socket connection.
     */
  /* readonly attribute AUTF8String host; */
  nsresult GetHost(nsACString * aHost);

  /**
     * Get the port for the underlying socket connection.
     */
  /* readonly attribute long port; */
  nsresult GetPort(PRInt32 *aPort);

  /** 
     * Returns the IP address of the socket connection peer. This
     * attribute is defined only once a connection has been established.
     */
  /* [noscript] PRNetAddr getPeerAddr (); */
  nsresult GetPeerAddr(PRNetAddr *_retval);

  /** 
     * Returns the IP address of the initiating end. This attribute
     * is defined only once a connection has been established.
     */
  /* [noscript] PRNetAddr getSelfAddr (); */
  nsresult GetSelfAddr(PRNetAddr *_retval);

  /**
     * Security info object returned from the secure socket provider.  This
     * object supports nsISSLSocketControl, nsITransportSecurityInfo, and
     * possibly other interfaces.
     */
  /* readonly attribute nsISupports securityInfo; */
  nsresult GetSecurityInfo(nsISupports  *aSecurityInfo);

  /**
     * Security notification callbacks passed to the secure socket provider
     * via nsISSLSocketControl at socket creation time.
     *
     * NOTE: this attribute cannot be changed once a stream has been opened.
     */
  /* attribute nsIInterfaceRequestor securityCallbacks; */
  nsresult GetSecurityCallbacks(nsIInterfaceRequestor  *aSecurityCallbacks);
  nsresult SetSecurityCallbacks(nsIInterfaceRequestor  aSecurityCallbacks);

  /**
     * Test if this socket transport is (still) connected.
     */
  /* boolean isAlive (); */
  nsresult IsAlive(PRBool *_retval);

  /**
     * Socket timeouts in seconds.  To specify no timeout, pass PR_UINT32_MAX
     * as aValue to setTimeout.  The implementation may truncate timeout values
     * to a smaller range of values (e.g., 0 to 0xFFFF).
     */
  /* unsigned long getTimeout (in unsigned long aType); */
  nsresult GetTimeout(PRUint32 aType, PRUint32 *_retval);

  /* void setTimeout (in unsigned long aType, in unsigned long aValue); */
  nsresult SetTimeout(PRUint32 aType, PRUint32 aValue);

  /**
     * Values for the aType parameter passed to get/setTimeout.
     */
  enum { TIMEOUT_CONNECT = 0U };

  enum { TIMEOUT_READ_WRITE = 1U };

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
  enum { STATUS_RESOLVING = 2152398851U };

  enum { STATUS_CONNECTING_TO = 2152398855U };

  enum { STATUS_CONNECTED_TO = 2152398852U };

  enum { STATUS_SENDING_TO = 2152398853U };

  enum { STATUS_WAITING_FOR = 2152398858U };

  enum { STATUS_RECEIVING_FROM = 2152398854U };

}

