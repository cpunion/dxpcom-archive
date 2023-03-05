/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentLoaderFactory.idl
 */

module mozilla.xpcom.nsIDocumentLoaderFactory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIContentViewer; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */


/* starting interface:    nsIDocumentLoaderFactory */
const char[] NS_IDOCUMENTLOADERFACTORY_IID_STR = "df15f850-5d98-11d4-9f4d-0010a4053fd0";

const nsIID NS_IDOCUMENTLOADERFACTORY_IID= 
  {0xdf15f850, 0x5d98, 0x11d4, 
    [ 0x9f, 0x4d, 0x00, 0x10, 0xa4, 0x05, 0x3f, 0xd0 ]};

/**
 * To get a component that implements nsIDocumentLoaderFactory
 * for a given mimetype, use nsICategoryManager to find an entry
 * with the mimetype as its name in the category "Gecko-Content-Viewers".
 * The value of the entry is the contractid of the component.
 * The component is a service, so use GetService, not CreateInstance to get it.
 */
extern(Windows)
interface nsIDocumentLoaderFactory : nsISupports {
  static const char[] IID_STR = NS_IDOCUMENTLOADERFACTORY_IID_STR;
  static const nsIID IID = NS_IDOCUMENTLOADERFACTORY_IID;

  /* nsIContentViewer createInstance (in string aCommand, in nsIChannel aChannel, in nsILoadGroup aLoadGroup, in string aContentType, in nsISupports aContainer, in nsISupports aExtraInfo, out nsIStreamListener aDocListenerResult); */
  nsresult CreateInstance(char *aCommand, nsIChannel aChannel, nsILoadGroup aLoadGroup, char *aContentType, nsISupports aContainer, nsISupports aExtraInfo, nsIStreamListener *aDocListenerResult, nsIContentViewer *_retval);

  /* nsIContentViewer createInstanceForDocument (in nsISupports aContainer, in nsIDocument aDocument, in string aCommand); */
  nsresult CreateInstanceForDocument(nsISupports aContainer, nsIDocument aDocument, char *aCommand, nsIContentViewer *_retval);

  /* nsIDocument createBlankDocument (in nsILoadGroup aLoadGroup); */
  nsresult CreateBlankDocument(nsILoadGroup aLoadGroup, nsIDocument *_retval);

}

