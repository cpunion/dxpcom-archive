/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProtocolHandler.idl
 */

module mozilla.dxpcom.nsIProtocolHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProtocolHandler;


public import mozilla.dxpcom.nsIProtocolHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIProtocolHandler */
/**
 * nsIProtocolHandler
 *
 * @status FROZEN
 */
class nsIProtocolHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IPROTOCOLHANDLER_IID;


  alias nsIProtocolHandler InnerType;

  this(nsIProtocolHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIProtocolHandler opCast() {
    return inner;
  }

  void opAssign(nsIProtocolHandler value) {
    inner = value;
  }

  /**
     * The scheme of this protocol (e.g., "file").
     */
  /* readonly attribute ACString scheme; */
  char[] Scheme(){
    scope auto value = new ACString();
    nsresult __result = inner.GetScheme(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /** 
     * The default port is the port that this protocol normally uses.
     * If a port does not make sense for the protocol (e.g., "about:")
     * then -1 will be returned.
     */
  /* readonly attribute long defaultPort; */
  PRInt32 DefaultPort(){
    PRInt32 value;
    nsresult __result = inner.GetDefaultPort(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Returns the protocol specific flags (see flag definitions below).  
     */
  /* readonly attribute unsigned long protocolFlags; */
  PRUint32 ProtocolFlags(){
    PRUint32 value;
    nsresult __result = inner.GetProtocolFlags(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Makes a URI object that is suitable for loading by this protocol,
     * where the URI string is given as an UTF-8 string.  The caller may
     * provide the charset from which the URI string originated, so that
     * the URI string can be translated back to that charset (if necessary)
     * before communicating with, for example, the origin server of the URI
     * string.  (Many servers do not support UTF-8 IRIs at the present time,
     * so we must be careful about tracking the native charset of the origin
     * server.)
     *
     * @param aSpec          - the URI string in UTF-8 encoding. depending
     *                         on the protocol implementation, unicode character
     *                         sequences may or may not be %xx escaped.
     * @param aOriginCharset - the charset of the document from which this URI
     *                         string originated.  this corresponds to the
     *                         charset that should be used when communicating
     *                         this URI to an origin server, for example.  if
     *                         null, then UTF-8 encoding is assumed (i.e.,
     *                         no charset transformation from aSpec).
     * @param aBaseURI       - if null, aSpec must specify an absolute URI.
     *                         otherwise, aSpec may be resolved relative
     *                         to aBaseURI, depending on the protocol. 
     *                         If the protocol has no concept of relative 
     *                         URI aBaseURI will simply be ignored.
     */
  /* nsIURI newURI (in AUTF8String aSpec, in string aOriginCharset, in nsIURI aBaseURI); */
  nsIURID  NewURI(char[] aSpec, char*aOriginCharset, nsIURID aBaseURI){
    scope auto _aSpec = new ACString(aSpec);
    nsIURI _retval;
    nsresult __result = inner.NewURI(cast(nsACString*)_aSpec, aOriginCharset, aBaseURI ? cast(nsIURI)aBaseURI : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
     * Constructs a new channel from the given URI for this protocol handler. 
     */
  /* nsIChannel newChannel (in nsIURI aURI); */
  nsIChannelD  NewChannel(nsIURID aURI){
    nsIChannel _retval;
    nsresult __result = inner.NewChannel(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsIChannelD(_retval);
  }

  /**
     * Allows a protocol to override blacklisted ports.
     *
     * This method will be called when there is an attempt to connect to a port 
     * that is blacklisted.  For example, for most protocols, port 25 (Simple Mail
     * Transfer) is banned.  When a URI containing this "known-to-do-bad-things" 
     * port number is encountered, this function will be called to ask if the 
     * protocol handler wants to override the ban.  
     */
  /* boolean allowPort (in long port, in string scheme); */
  PRBool AllowPort(PRInt32 port, char*scheme){
    PRBool _retval;
    nsresult __result = inner.AllowPort(port, scheme, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**************************************************************************
     * Constants for the protocol flags (the first is the default mask, the
     * others are deviations):
     *
     * NOTE: Implementation must ignore any flags they do not understand.
     */
/**
     * standard full URI with authority component and concept of relative
     * URIs (http, ftp, ...)
     */
  enum { URI_STD = 0U }

  /**
     * no concept of relative URIs (about, javascript, finger, ...)
     */
  enum { URI_NORELATIVE = 1U }

  /**
     * no authority component (file, ...)
     */
  enum { URI_NOAUTH = 2U }

  /**
     * This protocol handler can be proxied via a proxy (socks or http)
     * (e.g., irc, smtp, http, etc.).  If the protocol supports transparent
     * proxying, the handler should implement nsIProxiedProtocolHandler.
     *
     * If it supports only HTTP proxying, then it need not support
     * nsIProxiedProtocolHandler, but should instead set the ALLOWS_PROXY_HTTP
     * flag (see below).
     *
     * @see nsIProxiedProtocolHandler
     */
  enum { ALLOWS_PROXY = 4U }

  /**
     * This protocol handler can be proxied using a http proxy (e.g., http,
     * ftp, etc.).  nsIIOService::newChannelFromURI will feed URIs from this
     * protocol handler to the HTTP protocol handler instead.  This flag is
     * ignored if ALLOWS_PROXY is not set.
     */
  enum { ALLOWS_PROXY_HTTP = 8U }

private:
  nsIProtocolHandler inner;

}

