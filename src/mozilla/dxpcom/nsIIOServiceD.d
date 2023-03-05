/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIOService.idl
 */

module mozilla.dxpcom.nsIIOServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIIOService;


public import mozilla.dxpcom.nsIIOServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIProtocolHandler;

public import mozilla.dxpcom.nsIProtocolHandlerD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIIOService */
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
class nsIIOServiceD : public nsISupportsD {

  static const nsIID IID = NS_IIOSERVICE_IID;


  alias nsIIOService InnerType;

  this(nsIIOService intr){
    super(intr);
    this.inner = intr;
  }

  nsIIOService opCast() {
    return inner;
  }

  void opAssign(nsIIOService value) {
    inner = value;
  }

  /**
     * Returns a protocol handler for a given URI scheme.
     *
     * @param aScheme the URI scheme
     * @return reference to corresponding nsIProtocolHandler
     */
  /* nsIProtocolHandler getProtocolHandler (in string aScheme); */
  nsIProtocolHandlerD  GetProtocolHandler(char*aScheme){
    nsIProtocolHandler _retval;
    nsresult __result = inner.GetProtocolHandler(aScheme, &_retval);
    CheckException(__result);
    return new nsIProtocolHandlerD(_retval);
  }

  /**
     * Returns the protocol flags for a given scheme.
     *
     * @param aScheme the URI scheme
     * @return value of corresponding nsIProtocolHandler::protocolFlags
     */
  /* unsigned long getProtocolFlags (in string aScheme); */
  PRUint32 GetProtocolFlags(char*aScheme){
    PRUint32 _retval;
    nsresult __result = inner.GetProtocolFlags(aScheme, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * This method constructs a new URI by determining the scheme of the
     * URI spec, and then delegating the construction of the URI to the
     * protocol handler for that scheme. QueryInterface can be used on
     * the resulting URI object to obtain a more specific type of URI.
     *
     * @see nsIProtocolHandler::newURI
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
     * This method constructs a new URI from a nsIFile.
     *
     * @param aFile specifies the file path
     * @return reference to a new nsIURI object
     */
  /* nsIURI newFileURI (in nsIFile aFile); */
  nsIURID  NewFileURI(nsIFileD aFile){
    nsIURI _retval;
    nsresult __result = inner.NewFileURI(aFile ? cast(nsIFile)aFile : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
     * Creates a channel for a given URI.
     *
     * @param aURI nsIURI from which to make a channel
     * @return reference to the new nsIChannel object
     */
  /* nsIChannel newChannelFromURI (in nsIURI aURI); */
  nsIChannelD  NewChannelFromURI(nsIURID aURI){
    nsIChannel _retval;
    nsresult __result = inner.NewChannelFromURI(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsIChannelD(_retval);
  }

  /**
     * Equivalent to newChannelFromURI(newURI(...))
     */
  /* nsIChannel newChannel (in AUTF8String aSpec, in string aOriginCharset, in nsIURI aBaseURI); */
  nsIChannelD  NewChannel(char[] aSpec, char*aOriginCharset, nsIURID aBaseURI){
    scope auto _aSpec = new ACString(aSpec);
    nsIChannel _retval;
    nsresult __result = inner.NewChannel(cast(nsACString*)_aSpec, aOriginCharset, aBaseURI ? cast(nsIURI)aBaseURI : null, &_retval);
    CheckException(__result);
    return new nsIChannelD(_retval);
  }

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
  PRBool Offline(){
    PRBool value;
    nsresult __result = inner.GetOffline(&value);
    CheckException(__result);
    return value;
  }
  void Offline(PRBool aOffline){
    nsresult __result = inner.SetOffline(aOffline);
    CheckException(__result);
  }

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
  PRBool AllowPort(PRInt32 aPort, char*aScheme){
    PRBool _retval;
    nsresult __result = inner.AllowPort(aPort, aScheme, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  char[] ExtractScheme(char[] urlString){
    scope auto _urlString = new ACString(urlString);
    scope auto _retval = new ACString;
    nsresult __result = inner.ExtractScheme(cast(nsACString*)_urlString, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIIOService inner;

}

