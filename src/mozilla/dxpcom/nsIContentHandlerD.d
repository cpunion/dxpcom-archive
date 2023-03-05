/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentHandler.idl
 */

module mozilla.dxpcom.nsIContentHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContentHandler;


public import mozilla.dxpcom.nsIContentHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIContentHandler */
class nsIContentHandlerD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTHANDLER_IID;


  alias nsIContentHandler InnerType;

  this(nsIContentHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentHandler opCast() {
    return inner;
  }

  void opAssign(nsIContentHandler value) {
    inner = value;
  }

  /**
   * Tells the content handler to take over handling the content. If this
   * function succeeds, the URI Loader will leave this request alone, ignoring
   * progress notifications. Failure of this method will cause the request to be
   * cancelled, unless the error code is NS_ERROR_WONT_HANDLE_CONTENT (see
   * below).
   *
   * @param aWindowContext
   *        Window context, used to get things like the current nsIDOMWindow
   *        for this request. May be null.
   * @param aContentType
   *        The content type of aRequest
   * @param aRequest
   *        A request whose content type is already known.
   *
   * @throw NS_ERROR_WONT_HANDLE_CONTENT Indicates that this handler does not
   *        want to handle this content. A different way for handling this
   *        content should be tried.
   */
  /* void handleContent (in string aContentType, in nsIInterfaceRequestor aWindowContext, in nsIRequest aRequest); */
  void HandleContent(char*aContentType, nsIInterfaceRequestorD aWindowContext, nsIRequestD aRequest){
    nsresult __result = inner.HandleContent(aContentType, aWindowContext ? cast(nsIInterfaceRequestor)aWindowContext : null, aRequest ? cast(nsIRequest)aRequest : null);
    CheckException(__result);
  }

private:
  nsIContentHandler inner;

}

