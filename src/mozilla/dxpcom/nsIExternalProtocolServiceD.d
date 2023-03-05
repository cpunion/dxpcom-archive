/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExternalProtocolService.idl
 */

module mozilla.dxpcom.nsIExternalProtocolServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIExternalProtocolService;


public import mozilla.dxpcom.nsIExternalProtocolServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;


/* starting wrapper class:    nsIExternalProtocolService */
/**
 * The external protocol service is used for finding and launching
 * platform specific applications for particular protocols.
 *
 * You can ask the external protocol service if it has an external
 * handler for a given protocol scheme. And you can ask it to load 
 * the url using the default handler.
 */
class nsIExternalProtocolServiceD : public nsISupportsD {

  static const nsIID IID = NS_IEXTERNALPROTOCOLSERVICE_IID;


  alias nsIExternalProtocolService InnerType;

  this(nsIExternalProtocolService intr){
    super(intr);
    this.inner = intr;
  }

  nsIExternalProtocolService opCast() {
    return inner;
  }

  void opAssign(nsIExternalProtocolService value) {
    inner = value;
  }

  /**
   * Check whether a handler for a specific protocol exists.
   * @param aProtocolScheme The scheme from a url: http, ftp, mailto, etc.
   * @return true if we have a handler and false otherwise.
   */
  /* boolean externalProtocolHandlerExists (in string aProtocolScheme); */
  PRBool ExternalProtocolHandlerExists(char*aProtocolScheme){
    PRBool _retval;
    nsresult __result = inner.ExternalProtocolHandlerExists(aProtocolScheme, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Check whether a handler for a specific protocol is "exposed" as a visible
   * feature of the current application.
   *
   * An exposed protocol handler is one that can be used in all contexts.  A
   * non-exposed protocol handler is one that can only be used internally by the
   * application.  For example, a non-exposed protocol would not be loaded by the
   * application in response to a link click or a X-remote openURL command.
   * Instead, it would be deferred to the system's external protocol handler.
   */
  /* boolean isExposedProtocol (in string aProtocolScheme); */
  PRBool IsExposedProtocol(char*aProtocolScheme){
    PRBool _retval;
    nsresult __result = inner.IsExposedProtocol(aProtocolScheme, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Used to load a url via an external protocol handler (if one exists)
   * @param aURL The url to load
   */
  /* void loadUrl (in nsIURI aURL); */
  void LoadUrl(nsIURID aURL){
    nsresult __result = inner.LoadUrl(aURL ? cast(nsIURI)aURL : null);
    CheckException(__result);
  }

  /**
   * Used to load a URI via an external application. Might prompt the user for
   * permission to load the external application. Replaces loadUrl()
   *
   * @param aURI    The URI to load
   * @param aPrompt If null we grab one from windowwatcher if we need it
   */
  /* void loadURI (in nsIURI aURI, in nsIPrompt aPrompt); */
  void LoadURI(nsIURID aURI, nsIPromptD aPrompt){
    nsresult __result = inner.LoadURI(aURI ? cast(nsIURI)aURI : null, aPrompt ? cast(nsIPrompt)aPrompt : null);
    CheckException(__result);
  }

  /**
   * Gets a human-readable description for the application responsible for
   * handling a specific protocol.
   *
   * @param aScheme The scheme to look up. For example, "mms".
   *
   * @throw NS_ERROR_NOT_IMPLEMENTED
   *        If getting descriptions for protocol helpers is not supported
   * @throw NS_ERROR_NOT_AVAILABLE
   *        If no protocol helper exists for this scheme, or if it is not
   *        possible to get a description for it.
   */
  /* AString getApplicationDescription (in AUTF8String aScheme); */
  wchar[] GetApplicationDescription(char[] aScheme){
    scope auto _aScheme = new ACString(aScheme);
    scope auto _retval = new AString;
    nsresult __result = inner.GetApplicationDescription(cast(nsACString*)_aScheme, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIExternalProtocolService inner;

}

