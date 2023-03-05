/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExternalProtocolService.idl
 */

module mozilla.xpcom.nsIExternalProtocolService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIPrompt; /* forward declaration */


/* starting interface:    nsIExternalProtocolService */
const char[] NS_IEXTERNALPROTOCOLSERVICE_IID_STR = "a49813a4-98b7-4bdb-998c-8bd9704af0c0";

const nsIID NS_IEXTERNALPROTOCOLSERVICE_IID= 
  {0xa49813a4, 0x98b7, 0x4bdb, 
    [ 0x99, 0x8c, 0x8b, 0xd9, 0x70, 0x4a, 0xf0, 0xc0 ]};

/**
 * The external protocol service is used for finding and launching
 * platform specific applications for particular protocols.
 *
 * You can ask the external protocol service if it has an external
 * handler for a given protocol scheme. And you can ask it to load 
 * the url using the default handler.
 */
extern(Windows)
interface nsIExternalProtocolService : nsISupports {
  static const char[] IID_STR = NS_IEXTERNALPROTOCOLSERVICE_IID_STR;
  static const nsIID IID = NS_IEXTERNALPROTOCOLSERVICE_IID;

  /**
   * Check whether a handler for a specific protocol exists.
   * @param aProtocolScheme The scheme from a url: http, ftp, mailto, etc.
   * @return true if we have a handler and false otherwise.
   */
  /* boolean externalProtocolHandlerExists (in string aProtocolScheme); */
  nsresult ExternalProtocolHandlerExists(char *aProtocolScheme, PRBool *_retval);

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
  nsresult IsExposedProtocol(char *aProtocolScheme, PRBool *_retval);

  /**
   * Used to load a url via an external protocol handler (if one exists)
   * @param aURL The url to load
   */
  /* void loadUrl (in nsIURI aURL); */
  nsresult LoadUrl(nsIURI aURL);

  /**
   * Used to load a URI via an external application. Might prompt the user for
   * permission to load the external application. Replaces loadUrl()
   *
   * @param aURI    The URI to load
   * @param aPrompt If null we grab one from windowwatcher if we need it
   */
  /* void loadURI (in nsIURI aURI, in nsIPrompt aPrompt); */
  nsresult LoadURI(nsIURI aURI, nsIPrompt aPrompt);

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
  nsresult GetApplicationDescription(nsACString * aScheme, nsAString * _retval);

}

