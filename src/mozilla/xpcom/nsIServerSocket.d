/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIServerSocket.idl
 */

module mozilla.xpcom.nsIServerSocket;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIServerSocket;

public import mozilla.xpcom.nsISocketTransport; /* forward declaration */


/* starting interface:    nsIServerSocket */
const char[] NS_ISERVERSOCKET_IID_STR = "a5b64be0-d563-46bb-ae95-132e46fcd42f";

const nsIID NS_ISERVERSOCKET_IID= 
  {0xa5b64be0, 0xd563, 0x46bb, 
    [ 0xae, 0x95, 0x13, 0x2e, 0x46, 0xfc, 0xd4, 0x2f ]};

/**
 * nsIServerSocket
 *
 * An interface to a server socket that can accept incoming connections.
 */
extern(Windows)
interface nsIServerSocket : nsISupports {
  static const char[] IID_STR = NS_ISERVERSOCKET_IID_STR;
  static const nsIID IID = NS_ISERVERSOCKET_IID;

  /**
     * init
     *
     * This method initializes a server socket.
     *
     * @param aPort
     *        The port of the server socket.  Pass -1 to indicate no preference,
     *        and a port will be selected automatically.
     * @param aLoopbackOnly
     *        If true, the server socket will only respond to connections on the
     *        local loopback interface.  Otherwise, it will accept connections
     *        from any interface.  To specify a particular network interface,
     *        use initWithAddress.
     * @param aBackLog
     *        The maximum length the queue of pending connections may grow to.
     *        This parameter may be silently limited by the operating system.
     *        Pass -1 to use the default value.
     */
  /* void init (in long aPort, in boolean aLoopbackOnly, in long aBackLog); */
  nsresult Init(PRInt32 aPort, PRBool aLoopbackOnly, PRInt32 aBackLog);

  /**
     * initWithAddress
     *
     * This method initializes a server socket, and binds it to a particular
     * local address (and hence a particular local network interface).
     *
     * @param aAddr
     *        The address to which this server socket should be bound.
     * @param aBackLog
     *        The maximum length the queue of pending connections may grow to.
     *        This parameter may be silently limited by the operating system.
     *        Pass -1 to use the default value.
     */
  /* [noscript] void initWithAddress ([const] in PRNetAddrPtr aAddr, in long aBackLog); */
  nsresult InitWithAddress(PRNetAddr * aAddr, PRInt32 aBackLog);

  /**
     * close
     *
     * This method closes a server socket.  This does not affect already
     * connected client sockets (i.e., the nsISocketTransport instances
     * created from this server socket).  This will cause the onStopListening
     * event to asynchronously fire with a status of NS_BINDING_ABORTED.
     */
  /* void close (); */
  nsresult Close();

  /**
     * asyncListen
     *
     * This method puts the server socket in the listening state.  It will
     * asynchronously listen for and accept client connections.  The listener
     * will be notified once for each client connection that is accepted.  The
     * listener's onSocketAccepted method will be called on the same thread
     * that called asyncListen (the calling thread must have a nsIEventTarget).
     *
     * The listener will be passed a reference to an already connected socket
     * transport (nsISocketTransport).  See below for more details.
     *
     * @param aListener
     *        The listener to be notified when client connections are accepted.
     */
  /* void asyncListen (in nsIServerSocketListener aListener); */
  nsresult AsyncListen(nsIServerSocketListener aListener);

  /**
     * Returns the port of this server socket.
     */
  /* readonly attribute long port; */
  nsresult GetPort(PRInt32 *aPort);

  /**
     * Returns the address to which this server socket is bound.  Since a
     * server socket may be bound to multiple network devices, this address
     * may not necessarily be specific to a single network device.  In the
     * case of an IP socket, the IP address field would be zerod out to
     * indicate a server socket bound to all network devices.  Therefore,
     * this method cannot be used to determine the IP address of the local
     * system.  See nsIDNSService::myHostName if this is what you need.
     */
  /* [noscript] PRNetAddr getAddress (); */
  nsresult GetAddress(PRNetAddr *_retval);

}


/* starting interface:    nsIServerSocketListener */
const char[] NS_ISERVERSOCKETLISTENER_IID_STR = "836d98ec-fee2-4bde-b609-abd5e966eabd";

const nsIID NS_ISERVERSOCKETLISTENER_IID= 
  {0x836d98ec, 0xfee2, 0x4bde, 
    [ 0xb6, 0x09, 0xab, 0xd5, 0xe9, 0x66, 0xea, 0xbd ]};

extern(Windows)
interface nsIServerSocketListener : nsISupports {
  static const char[] IID_STR = NS_ISERVERSOCKETLISTENER_IID_STR;
  static const nsIID IID = NS_ISERVERSOCKETLISTENER_IID;

  /**
 * nsIServerSocketListener
 *
 * This interface is notified whenever a server socket accepts a new connection.
 * The transport is in the connected state, and read/write streams can be opened
 * using the normal nsITransport API.  The address of the client can be found by
 * calling the nsISocketTransport::GetAddress method or by inspecting
 * nsISocketTransport::GetHost, which returns a string representation of the
 * client's IP address (NOTE: this may be an IPv4 or IPv6 string literal).
 */
/**
     * onSocketAccepted
     *
     * This method is called when a client connection is accepted.
     *
     * @param aServ
     *        The server socket.
     * @param aTransport
     *        The connected socket transport.
     */
  /* void onSocketAccepted (in nsIServerSocket aServ, in nsISocketTransport aTransport); */
  nsresult OnSocketAccepted(nsIServerSocket aServ, nsISocketTransport aTransport);

  /**
     * onStopListening
     *
     * This method is called when the listening socket stops for some reason.
     * The server socket is effectively dead after this notification.
     *
     * @param aServ
     *        The server socket.
     * @param aStatus
     *        The reason why the server socket stopped listening.  If the
     *        server socket was manually closed, then this value will be
     *        NS_BINDING_ABORTED.
     */
  /* void onStopListening (in nsIServerSocket aServ, in nsresult aStatus); */
  nsresult OnStopListening(nsIServerSocket aServ, nsresult aStatus);

}

