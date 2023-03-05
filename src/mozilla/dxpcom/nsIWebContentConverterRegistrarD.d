/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebContentConverterRegistrar.idl
 */

module mozilla.dxpcom.nsIWebContentConverterRegistrarD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebContentConverterRegistrar;


public import mozilla.dxpcom.nsIWebContentConverterRegistrarD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;


/* starting wrapper class:    nsIWebContentHandlerInfo */
class nsIWebContentHandlerInfoD : public nsISupportsD {

  static const nsIID IID = NS_IWEBCONTENTHANDLERINFO_IID;


  alias nsIWebContentHandlerInfo InnerType;

  this(nsIWebContentHandlerInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebContentHandlerInfo opCast() {
    return inner;
  }

  void opAssign(nsIWebContentHandlerInfo value) {
    inner = value;
  }

  /**
   * The content type handled by the handler
   */
  /* readonly attribute AString contentType; */
  wchar[] ContentType(){
    scope auto value = new AString();
    nsresult __result = inner.GetContentType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The uri of the handler, with an embedded %s where the URI of the loaded
   * document will be encoded.
   */
  /* readonly attribute AString uri; */
  wchar[] Uri(){
    scope auto value = new AString();
    nsresult __result = inner.GetUri(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * A human readable title of the handler.
   */
  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /** 
   * Gets the service URL Spec, with the loading document URI encoded in it.
   * @param   uri
   *          The URI of the document being loaded
   * @returns The URI of the service with the loading document URI encoded in 
   *          it.
   */
  /* AString getHandlerURI (in AString uri); */
  wchar[] GetHandlerURI(wchar[] uri){
    scope auto _uri = new AString(uri);
    scope auto _retval = new AString;
    nsresult __result = inner.GetHandlerURI(cast(nsAString*)_uri, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Determines if this handler object is equivalent to another.
   * @param   other
   *          The other handler info object
   * @returns true if the two objects are equivalent (same content type, 
   *          same uri).
   */
  /* boolean equals (in nsIWebContentHandlerInfo other); */
  PRBool Equals(nsIWebContentHandlerInfoD other){
    PRBool _retval;
    nsresult __result = inner.Equals(other ? cast(nsIWebContentHandlerInfo)other : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIWebContentHandlerInfo inner;

}


/* starting wrapper class:    nsIWebContentConverterService */
class nsIWebContentConverterServiceD : public nsISupportsD {

  static const nsIID IID = NS_IWEBCONTENTCONVERTERSERVICE_IID;


  alias nsIWebContentConverterService InnerType;

  this(nsIWebContentConverterService intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebContentConverterService opCast() {
    return inner;
  }

  void opAssign(nsIWebContentConverterService value) {
    inner = value;
  }

  /**
   * Specifies the handler to be used to automatically handle all links of a
   * certain content type from now on. 
   * @param   contentType
   *          The content type to automatically load with the specified handler
   * @param   handler
   *          A web service handler. If this is null, no automatic action is
   *          performed and the user must choose.
   * @throws  NS_ERROR_NOT_AVAILABLE if the service refered to by |handler| is 
   *          not already registered.
   */
  /* void setAutoHandler (in AString contentType, in nsIWebContentHandlerInfo handler); */
  void SetAutoHandler(wchar[] contentType, nsIWebContentHandlerInfoD handler){
    scope auto _contentType = new AString(contentType);
    nsresult __result = inner.SetAutoHandler(cast(nsAString*)_contentType, handler ? cast(nsIWebContentHandlerInfo)handler : null);
    CheckException(__result);
  }

  /**
   * Gets the auto handler specified for a particular content type
   * @param   contentType
   *          The content type to look up an auto handler for.
   * @returns The web service handler that will automatically handle all 
   *          documents of the specified type. null if there is no automatic
   *          handler. (Handlers may be registered, just none of them specified
   *          as "automatic").
   */
  /* nsIWebContentHandlerInfo getAutoHandler (in AString contentType); */
  nsIWebContentHandlerInfoD  GetAutoHandler(wchar[] contentType){
    scope auto _contentType = new AString(contentType);
    nsIWebContentHandlerInfo _retval;
    nsresult __result = inner.GetAutoHandler(cast(nsAString*)_contentType, &_retval);
    CheckException(__result);
    return new nsIWebContentHandlerInfoD(_retval);
  }

  /**
   * Gets a web handler for the specified service URI
   * @param   contentType
   *          The content type of the service being located
   * @param   uri
   *          The service URI of the handler to locate.
   * @returns A web service handler that uses the specified uri.
   */
  /* nsIWebContentHandlerInfo getWebContentHandlerByURI (in AString contentType, in AString uri); */
  nsIWebContentHandlerInfoD  GetWebContentHandlerByURI(wchar[] contentType, wchar[] uri){
    scope auto _contentType = new AString(contentType);
    scope auto _uri = new AString(uri);
    nsIWebContentHandlerInfo _retval;
    nsresult __result = inner.GetWebContentHandlerByURI(cast(nsAString*)_contentType, cast(nsAString*)_uri, &_retval);
    CheckException(__result);
    return new nsIWebContentHandlerInfoD(_retval);
  }

  /**
   * Loads the preferred handler when content of a registered type is about
   * to be loaded.
   * @param   request
   *          The nsIRequest for the load of the content
   */
  /* void loadPreferredHandler (in nsIRequest request); */
  void LoadPreferredHandler(nsIRequestD request){
    nsresult __result = inner.LoadPreferredHandler(request ? cast(nsIRequest)request : null);
    CheckException(__result);
  }

  /**
   * Removes a registered protocol handler
   * @param   protocol
   *          The protocol scheme to remove a service handler for
   * @param   uri
   *          The uri of the service handler to remove
   */
  /* void removeProtocolHandler (in AString protocol, in AString uri); */
  void RemoveProtocolHandler(wchar[] protocol, wchar[] uri){
    scope auto _protocol = new AString(protocol);
    scope auto _uri = new AString(uri);
    nsresult __result = inner.RemoveProtocolHandler(cast(nsAString*)_protocol, cast(nsAString*)_uri);
    CheckException(__result);
  }

  /**
   * Removes a registered content handler
   * @param   contentType
   *          The content type to remove a service handler for
   * @param   uri
   *          The uri of the service handler to remove
   */
  /* void removeContentHandler (in AString contentType, in AString uri); */
  void RemoveContentHandler(wchar[] contentType, wchar[] uri){
    scope auto _contentType = new AString(contentType);
    scope auto _uri = new AString(uri);
    nsresult __result = inner.RemoveContentHandler(cast(nsAString*)_contentType, cast(nsAString*)_uri);
    CheckException(__result);
  }

  /**
   * Registers a protocol handler for a web service
   * @param   protocol
   *          The protocol scheme to register a service handler for
   * @param   uri
   *          The uri of the service handler to register
   * @param   title
   *          The human readable title of the service
   */
  /* void registerProtocolHandler (in AString scheme, in AString uri, in AString title); */
  void RegisterProtocolHandler(wchar[] scheme, wchar[] uri, wchar[] title){
    scope auto _scheme = new AString(scheme);
    scope auto _uri = new AString(uri);
    scope auto _title = new AString(title);
    nsresult __result = inner.RegisterProtocolHandler(cast(nsAString*)_scheme, cast(nsAString*)_uri, cast(nsAString*)_title);
    CheckException(__result);
  }

  /**
   * Registers a content handler for a web service
   * @param   contentType
   *          The content type to register a service handler for
   * @param   uri
   *          The uri of the service handler to register
   * @param   title
   *          The human readable title of the service
   */
  /* void registerContentHandler (in AString contentType, in AString uri, in AString title); */
  void RegisterContentHandler(wchar[] contentType, wchar[] uri, wchar[] title){
    scope auto _contentType = new AString(contentType);
    scope auto _uri = new AString(uri);
    scope auto _title = new AString(title);
    nsresult __result = inner.RegisterContentHandler(cast(nsAString*)_contentType, cast(nsAString*)_uri, cast(nsAString*)_title);
    CheckException(__result);
  }

  /**
   * Gets the list of content handlers for a particular type.
   * @param   contentType
   *          The content type to get handlers for
   * @returns An array of nsIWebContentHandlerInfo objects
   */
  /* void getContentHandlers (in AString contentType, out unsigned long count, [array, size_is (count), retval] out nsIWebContentHandlerInfo handlers); */
  void GetContentHandlers(wchar[] contentType, out PRUint32 count, out nsIWebContentHandlerInfoD *handlers){
    scope auto _contentType = new AString(contentType);
    nsIWebContentHandlerInfo _handlers;
    nsresult __result = inner.GetContentHandlers(cast(nsAString*)_contentType, &count, &_handlers);
    CheckException(__result);
    handlers = _handlers ? new nsIWebContentHandlerInfoD(_handlers) : null;
  }

  /**
   * Resets the list of available content handlers to the default set from
   * the distribution.
   * @param   contentType
   *          The content type to reset handlers for
   */
  /* void resetHandlersForType (in AString contentType); */
  void ResetHandlersForType(wchar[] contentType){
    scope auto _contentType = new AString(contentType);
    nsresult __result = inner.ResetHandlersForType(cast(nsAString*)_contentType);
    CheckException(__result);
  }

private:
  nsIWebContentConverterService inner;

}

