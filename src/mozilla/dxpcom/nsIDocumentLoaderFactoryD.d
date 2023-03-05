/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentLoaderFactory.idl
 */

module mozilla.dxpcom.nsIDocumentLoaderFactoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocumentLoaderFactory;


public import mozilla.dxpcom.nsIDocumentLoaderFactoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIContentViewer;

public import mozilla.dxpcom.nsIContentViewerD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsILoadGroup;

public import mozilla.dxpcom.nsILoadGroupD;


/* starting wrapper class:    nsIDocumentLoaderFactory */
/**
 * To get a component that implements nsIDocumentLoaderFactory
 * for a given mimetype, use nsICategoryManager to find an entry
 * with the mimetype as its name in the category "Gecko-Content-Viewers".
 * The value of the entry is the contractid of the component.
 * The component is a service, so use GetService, not CreateInstance to get it.
 */
class nsIDocumentLoaderFactoryD : public nsISupportsD {

  static const nsIID IID = NS_IDOCUMENTLOADERFACTORY_IID;


  alias nsIDocumentLoaderFactory InnerType;

  this(nsIDocumentLoaderFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocumentLoaderFactory opCast() {
    return inner;
  }

  void opAssign(nsIDocumentLoaderFactory value) {
    inner = value;
  }

  /* nsIContentViewer createInstance (in string aCommand, in nsIChannel aChannel, in nsILoadGroup aLoadGroup, in string aContentType, in nsISupports aContainer, in nsISupports aExtraInfo, out nsIStreamListener aDocListenerResult); */
  nsIContentViewerD  CreateInstance(char*aCommand, nsIChannelD aChannel, nsILoadGroupD aLoadGroup, char*aContentType, nsISupportsD aContainer, nsISupportsD aExtraInfo, out nsIStreamListenerD aDocListenerResult){
    nsIStreamListener _aDocListenerResult;
    nsIContentViewer _retval;
    nsresult __result = inner.CreateInstance(aCommand, aChannel ? cast(nsIChannel)aChannel : null, aLoadGroup ? cast(nsILoadGroup)aLoadGroup : null, aContentType, aContainer ? cast(nsISupports)aContainer : null, aExtraInfo ? cast(nsISupports)aExtraInfo : null, &_aDocListenerResult, &_retval);
    CheckException(__result);
    aDocListenerResult = _aDocListenerResult ? new nsIStreamListenerD(_aDocListenerResult) : null;
    return new nsIContentViewerD(_retval);
  }

  /* nsIContentViewer createInstanceForDocument (in nsISupports aContainer, in nsIDocument aDocument, in string aCommand); */
  nsIContentViewerD  CreateInstanceForDocument(nsISupportsD aContainer, nsIDocumentD aDocument, char*aCommand){
    nsIContentViewer _retval;
    nsresult __result = inner.CreateInstanceForDocument(aContainer ? cast(nsISupports)aContainer : null, aDocument ? cast(nsIDocument)aDocument : null, aCommand, &_retval);
    CheckException(__result);
    return new nsIContentViewerD(_retval);
  }

  /* nsIDocument createBlankDocument (in nsILoadGroup aLoadGroup); */
  nsIDocumentD  CreateBlankDocument(nsILoadGroupD aLoadGroup){
    nsIDocument _retval;
    nsresult __result = inner.CreateBlankDocument(aLoadGroup ? cast(nsILoadGroup)aLoadGroup : null, &_retval);
    CheckException(__result);
    return new nsIDocumentD(_retval);
  }

private:
  nsIDocumentLoaderFactory inner;

}

