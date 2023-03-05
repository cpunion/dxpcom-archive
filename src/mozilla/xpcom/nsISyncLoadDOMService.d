/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISyncLoadDOMService.idl
 */

module mozilla.xpcom.nsISyncLoadDOMService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsISyncLoadDOMService */
const char[] NS_ISYNCLOADDOMSERVICE_IID_STR = "96a13c30-695a-492c-918b-04ae3edb4e4c";

const nsIID NS_ISYNCLOADDOMSERVICE_IID= 
  {0x96a13c30, 0x695a, 0x492c, 
    [ 0x91, 0x8b, 0x04, 0xae, 0x3e, 0xdb, 0x4e, 0x4c ]};

/*************************************************************************
 *                                                                       *
 *                          **** NOTICE ****                             *
 *                                                                       *
 *    nsISyncLoadDOMService defines synchronous methods to download      *
 *    data from the network.  Any delays from the server will            *
 *    appear as a hang in the mozilla UI.  Therefore, this interface     *
 *    should be avoided as much as possible.                             *
 *                                                                       *
 *    Don't make me come over there!!                                    *
 *                                                                       *
 *                                                                       *
 ************************************************************************/
/**
 * The nsISyncDOMLoadService interface can be used to synchronously load
 * a document.
 */
extern(Windows)
interface nsISyncLoadDOMService : nsISupports {
  static const char[] IID_STR = NS_ISYNCLOADDOMSERVICE_IID_STR;
  static const nsIID IID = NS_ISYNCLOADDOMSERVICE_IID;

  /**
     * Synchronously load the document from the specified channel.
     *
     * @param aChannel   The channel to load the document from.
     * @param aLoaderURI URI of loading document. For security checks
     *                   null if no securitychecks should be done
     *
     * @returns The document loaded from the URI.
     */
  /* nsIDOMDocument loadDocument (in nsIChannel aChannel, in nsIURI aLoaderURI); */
  nsresult LoadDocument(nsIChannel aChannel, nsIURI aLoaderURI, nsIDOMDocument *_retval);

  /* nsIDOMDocument loadDocumentAsXML (in nsIChannel aChannel, in nsIURI aLoaderURI); */
  nsresult LoadDocumentAsXML(nsIChannel aChannel, nsIURI aLoaderURI, nsIDOMDocument *_retval);

  /**
     * Synchronously load an XML document from the specified
     * channel. The channel must be possible to open synchronously.
     *
     * @param aChannel   The channel to load the document from.
     * @param aLoaderURI URI of loading document. For security checks
     *                   null if no securitychecks should be done
     *
     * @returns The document loaded from the URI.
     */
  /* nsIDOMDocument loadLocalDocument (in nsIChannel aChannel, in nsIURI aLoaderURI); */
  nsresult LoadLocalDocument(nsIChannel aChannel, nsIURI aLoaderURI, nsIDOMDocument *_retval);

  /**
     * Synchronously load the xbl-document from the specified channel. The channel
     * must be possible to open synchronously.
     *
     * @param aChannel   The channel to load the document from.
     *
     * @returns The document loaded from the URI.
     */
  /* nsIDOMDocument loadLocalXBLDocument (in nsIChannel aChannel); */
  nsresult LoadLocalXBLDocument(nsIChannel aChannel, nsIDOMDocument *_retval);

}

