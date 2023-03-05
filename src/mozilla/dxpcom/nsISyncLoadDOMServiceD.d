/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISyncLoadDOMService.idl
 */

module mozilla.dxpcom.nsISyncLoadDOMServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISyncLoadDOMService;


public import mozilla.dxpcom.nsISyncLoadDOMServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsISyncLoadDOMService */
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
class nsISyncLoadDOMServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISYNCLOADDOMSERVICE_IID;


  alias nsISyncLoadDOMService InnerType;

  this(nsISyncLoadDOMService intr){
    super(intr);
    this.inner = intr;
  }

  nsISyncLoadDOMService opCast() {
    return inner;
  }

  void opAssign(nsISyncLoadDOMService value) {
    inner = value;
  }

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
  nsIDOMDocumentD  LoadDocument(nsIChannelD aChannel, nsIURID aLoaderURI){
    nsIDOMDocument _retval;
    nsresult __result = inner.LoadDocument(aChannel ? cast(nsIChannel)aChannel : null, aLoaderURI ? cast(nsIURI)aLoaderURI : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

  /* nsIDOMDocument loadDocumentAsXML (in nsIChannel aChannel, in nsIURI aLoaderURI); */
  nsIDOMDocumentD  LoadDocumentAsXML(nsIChannelD aChannel, nsIURID aLoaderURI){
    nsIDOMDocument _retval;
    nsresult __result = inner.LoadDocumentAsXML(aChannel ? cast(nsIChannel)aChannel : null, aLoaderURI ? cast(nsIURI)aLoaderURI : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

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
  nsIDOMDocumentD  LoadLocalDocument(nsIChannelD aChannel, nsIURID aLoaderURI){
    nsIDOMDocument _retval;
    nsresult __result = inner.LoadLocalDocument(aChannel ? cast(nsIChannel)aChannel : null, aLoaderURI ? cast(nsIURI)aLoaderURI : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

  /**
     * Synchronously load the xbl-document from the specified channel. The channel
     * must be possible to open synchronously.
     *
     * @param aChannel   The channel to load the document from.
     *
     * @returns The document loaded from the URI.
     */
  /* nsIDOMDocument loadLocalXBLDocument (in nsIChannel aChannel); */
  nsIDOMDocumentD  LoadLocalXBLDocument(nsIChannelD aChannel){
    nsIDOMDocument _retval;
    nsresult __result = inner.LoadLocalXBLDocument(aChannel ? cast(nsIChannel)aChannel : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

private:
  nsISyncLoadDOMService inner;

}

