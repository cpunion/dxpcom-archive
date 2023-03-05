/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIOService.idl
 */

module mozilla.xpcom.nsIIOService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIProtocolHandler; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIIOService */
const char[] NS_IIOSERVICE_IID_STR = "bddeda3f-9020-4d12-8c70-984ee9f7935e";

const nsIID NS_IIOSERVICE_IID= 
  {0xbddeda3f, 0x9020, 0x4d12, 
    [ 0x8c, 0x70, 0x98, 0x4e, 0xe9, 0xf7, 0x93, 0x5e ]};

/**
 * nsIIOService provides a set of network utility functions.  This interface
 * duplicates many of the nsIProtocolHandler methods in a protocol handler
 * independent way (e.g., NewURI inspects the scheme in order to delegate
 * creation of the new URI to the appropriate protocol handler).  nsIIOService
 * also provides a set of URL parsing utility functions.  These are provided
 * as a convenience to the programmer and in some cases to improve performance
 * by eliminating intermediate data structures and interfaces.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIIOService : nsISupports {
  static const char[] IID_STR = NS_IIOSERVICE_IID_STR;
  static const nsIID IID = NS_IIOSERVICE_IID;

  /**
     * Returns a protocol handler for a given URI scheme.
     *
     * @param aScheme the URI scheme
     * @return reference to corresponding nsIProtocolHandler
     */
  /* nsIProtocolHandler getProtocolHandler (in string aScheme); */
  nsresult GetProtocolHandler(char *aScheme, nsIProtocolHandler *_retval);

  /**
     * Returns the protocol flags for a given scheme.
     *
     * @param aScheme the URI scheme
     * @return value of corresponding nsIProtocolHandler::protocolFlags
     */
  /* unsigned long getProtocolFlags (in string aScheme); */
  nsresult GetProtocolFlags(char *aScheme, PRUint32 *_retval);

  /**
     * This method constructs a new URI by determining the scheme of the
     * URI spec, and then delegating the construction of the URI to the
     * protocol handler for that scheme. QueryInterface can be used on
     * the resulting URI object to obtain a more specific type of URI.
     *
     * @see nsIProtocolHandler::newURI
     */
  /* nsIURI newURI (in AUTF8String aSpec, in string aOriginCharset, in nsIURI aBaseURI); */
  nsresult NewURI(nsACString * aSpec, char *aOriginCharset, nsIURI aBaseURI, nsIURI *_retval);

  /**
     * This method constructs a new URI from a nsIFile.
     *
     * @param aFile specifies the file path
     * @return reference to a new nsIURI object
     */
  /* nsIURI newFileURI (in nsIFile aFile); */
  nsresult NewFileURI(nsIFile aFile, nsIURI *_retval);

  /**
     * Creates a channel for a given URI.
     *
     * @param aURI nsIURI from which to make a channel
     * @return reference to the new nsIChannel object
     */
  /* nsIChannel newChannelFromURI (in nsIURI aURI); */
  nsresult NewChannelFromURI(nsIURI aURI, nsIChannel *_retval);

  /**
     * Equivalent to newChannelFromURI(newURI(...))
     */
  /* nsIChannel newChannel (in AUTF8String aSpec, in string aOriginCharset, in nsIURI aBaseURI); */
  nsresult NewChannel(nsACString * aSpec, char *aOriginCharset, nsIURI aBaseURI, nsIChannel *_retval);

  /**
     * Returns true if networking is in "offline" mode. When in offline mode, 
     * attempts to access the network will fail (although this is not 
     * necessarily corrolated with whether there is actually a network 
     * available -- that's hard to detect without causing the dialer to 
     * come up).
     *
     * Changing this fires observer notifications ... see below.
     */
  /* attribute boolean offline; */
  nsresult GetOffline(PRBool *aOffline);
  nsresult SetOffline(PRBool aOffline);

  /**
     * Checks if a port number is banned. This involves consulting a list of
     * unsafe ports, corresponding to network services that may be easily
     * exploitable. If the given port is considered unsafe, then the protocol
     * handler (corresponding to aScheme) will be asked whether it wishes to
     * override the IO service's decision to block the port. This gives the
     * protocol handler ultimate control over its own security policy while
     * ensuring reasonable, default protection.
     *
     * @see nsIProtocolHandler::allowPort
     */
  /* boolean allowPort (in long aPort, in string aScheme); */
  nsresult AllowPort(PRInt32 aPort, char *aScheme, PRBool *_retval);

  /**
     * Utility to extract the scheme from a URL string, consistently and
     * according to spec (see RFC 2396).
     *
     * NOTE: Most URL parsing is done via nsIURI, and in fact the scheme
     * can also be extracted from a URL string via nsIURI.  This method
     * is provided purely as an optimization.
     *
     * @param aSpec the URL string to parse
     * @return URL scheme
     *
     * @throws NS_ERROR_MALFORMED_URI if URL string is not of the right form.
     */
  /* ACString extractScheme (in AUTF8String urlString); */
  nsresult ExtractScheme(nsACString * urlString, nsACString * _retval);

}

