/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProtocolHandler.idl
 */

module mozilla.xpcom.nsIProtocolHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsIProtocolHandler */
const char[] NS_IPROTOCOLHANDLER_IID_STR = "15fd6940-8ea7-11d3-93ad-00104ba0fd40";

const nsIID NS_IPROTOCOLHANDLER_IID= 
  {0x15fd6940, 0x8ea7, 0x11d3, 
    [ 0x93, 0xad, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

/**
 * nsIProtocolHandler
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIProtocolHandler : nsISupports {
  static const char[] IID_STR = NS_IPROTOCOLHANDLER_IID_STR;
  static const nsIID IID = NS_IPROTOCOLHANDLER_IID;

  /**
     * The scheme of this protocol (e.g., "file").
     */
  /* readonly attribute ACString scheme; */
  nsresult GetScheme(nsACString * aScheme);

  /** 
     * The default port is the port that this protocol normally uses.
     * If a port does not make sense for the protocol (e.g., "about:")
     * then -1 will be returned.
     */
  /* readonly attribute long defaultPort; */
  nsresult GetDefaultPort(PRInt32 *aDefaultPort);

  /**
     * Returns the protocol specific flags (see flag definitions below).  
     */
  /* readonly attribute unsigned long protocolFlags; */
  nsresult GetProtocolFlags(PRUint32 *aProtocolFlags);

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
  nsresult NewURI(nsACString * aSpec, char *aOriginCharset, nsIURI aBaseURI, nsIURI *_retval);

  /**
     * Constructs a new channel from the given URI for this protocol handler. 
     */
  /* nsIChannel newChannel (in nsIURI aURI); */
  nsresult NewChannel(nsIURI aURI, nsIChannel *_retval);

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
  nsresult AllowPort(PRInt32 port, char *scheme, PRBool *_retval);

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
  enum { URI_STD = 0U };

  /**
     * no concept of relative URIs (about, javascript, finger, ...)
     */
  enum { URI_NORELATIVE = 1U };

  /**
     * no authority component (file, ...)
     */
  enum { URI_NOAUTH = 2U };

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
  enum { ALLOWS_PROXY = 4U };

  /**
     * This protocol handler can be proxied using a http proxy (e.g., http,
     * ftp, etc.).  nsIIOService::newChannelFromURI will feed URIs from this
     * protocol handler to the HTTP protocol handler instead.  This flag is
     * ignored if ALLOWS_PROXY is not set.
     */
  enum { ALLOWS_PROXY_HTTP = 8U };

}

