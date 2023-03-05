/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIServerSocket.idl
 */

module mozilla.dxpcom.nsIServerSocketD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIServerSocket;


public import mozilla.dxpcom.nsIServerSocketD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIServerSocket;

import mozilla.dxpcom.nsIServerSocketD;

public import mozilla.xpcom.nsISocketTransport;

public import mozilla.dxpcom.nsISocketTransportD;


/* starting wrapper class:    nsIServerSocket */
/**
 * nsIServerSocket
 *
 * An interface to a server socket that can accept incoming connections.
 */
class nsIServerSocketD : public nsISupportsD {

  static const nsIID IID = NS_ISERVERSOCKET_IID;


  alias nsIServerSocket InnerType;

  this(nsIServerSocket intr){
    super(intr);
    this.inner = intr;
  }

  nsIServerSocket opCast() {
    return inner;
  }

  void opAssign(nsIServerSocket value) {
    inner = value;
  }

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
  void Init(PRInt32 aPort, PRBool aLoopbackOnly, PRInt32 aBackLog){
    nsresult __result = inner.Init(aPort, aLoopbackOnly, aBackLog);
    CheckException(__result);
  }

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
  void InitWithAddress(PRNetAddr * aAddr, PRInt32 aBackLog){
    nsresult __result = inner.InitWithAddress(aAddr, aBackLog);
    CheckException(__result);
  }

  /**
     * close
     *
     * This method closes a server socket.  This does not affect already
     * connected client sockets (i.e., the nsISocketTransport instances
     * created from this server socket).  This will cause the onStopListening
     * event to asynchronously fire with a status of NS_BINDING_ABORTED.
     */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

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
  void AsyncListen(nsIServerSocketListenerD aListener){
    nsresult __result = inner.AsyncListen(aListener ? cast(nsIServerSocketListener)aListener : null);
    CheckException(__result);
  }

  /**
     * Returns the port of this server socket.
     */
  /* readonly attribute long port; */
  PRInt32 Port(){
    PRInt32 value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return value;
  }

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
  PRNetAddr GetAddress(){
PRNetAddr _retval;
    nsresult __result = inner.GetAddress(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIServerSocket inner;

}


/* starting wrapper class:    nsIServerSocketListener */
class nsIServerSocketListenerD : public nsISupportsD {

  static const nsIID IID = NS_ISERVERSOCKETLISTENER_IID;


  alias nsIServerSocketListener InnerType;

  this(nsIServerSocketListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIServerSocketListener opCast() {
    return inner;
  }

  void opAssign(nsIServerSocketListener value) {
    inner = value;
  }

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
  void OnSocketAccepted(nsIServerSocketD aServ, nsISocketTransportD aTransport){
    nsresult __result = inner.OnSocketAccepted(aServ ? cast(nsIServerSocket)aServ : null, aTransport ? cast(nsISocketTransport)aTransport : null);
    CheckException(__result);
  }

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
  void OnStopListening(nsIServerSocketD aServ, nsresult aStatus){
    nsresult __result = inner.OnStopListening(aServ ? cast(nsIServerSocket)aServ : null, aStatus);
    CheckException(__result);
  }

private:
  nsIServerSocketListener inner;

}

