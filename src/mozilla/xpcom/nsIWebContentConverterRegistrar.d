/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebContentConverterRegistrar.idl
 */

module mozilla.xpcom.nsIWebContentConverterRegistrar;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRequest; /* forward declaration */


/* starting interface:    nsIWebContentHandlerInfo */
const char[] NS_IWEBCONTENTHANDLERINFO_IID_STR = "2bd97d63-e928-4d52-9fd4-34061349a9a6";

const nsIID NS_IWEBCONTENTHANDLERINFO_IID= 
  {0x2bd97d63, 0xe928, 0x4d52, 
    [ 0x9f, 0xd4, 0x34, 0x06, 0x13, 0x49, 0xa9, 0xa6 ]};

extern(Windows)
interface nsIWebContentHandlerInfo : nsISupports {
  static const char[] IID_STR = NS_IWEBCONTENTHANDLERINFO_IID_STR;
  static const nsIID IID = NS_IWEBCONTENTHANDLERINFO_IID;

  /**
   * The content type handled by the handler
   */
  /* readonly attribute AString contentType; */
  nsresult GetContentType(nsAString * aContentType);

  /**
   * The uri of the handler, with an embedded %s where the URI of the loaded
   * document will be encoded.
   */
  /* readonly attribute AString uri; */
  nsresult GetUri(nsAString * aUri);

  /**
   * A human readable title of the handler.
   */
  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /** 
   * Gets the service URL Spec, with the loading document URI encoded in it.
   * @param   uri
   *          The URI of the document being loaded
   * @returns The URI of the service with the loading document URI encoded in 
   *          it.
   */
  /* AString getHandlerURI (in AString uri); */
  nsresult GetHandlerURI(nsAString * uri, nsAString * _retval);

  /**
   * Determines if this handler object is equivalent to another.
   * @param   other
   *          The other handler info object
   * @returns true if the two objects are equivalent (same content type, 
   *          same uri).
   */
  /* boolean equals (in nsIWebContentHandlerInfo other); */
  nsresult Equals(nsIWebContentHandlerInfo other, PRBool *_retval);

}


/* starting interface:    nsIWebContentConverterService */
const char[] NS_IWEBCONTENTCONVERTERSERVICE_IID_STR = "632b16a8-5c6b-4dc5-a8db-01771af7a79d";

const nsIID NS_IWEBCONTENTCONVERTERSERVICE_IID= 
  {0x632b16a8, 0x5c6b, 0x4dc5, 
    [ 0xa8, 0xdb, 0x01, 0x77, 0x1a, 0xf7, 0xa7, 0x9d ]};

extern(Windows)
interface nsIWebContentConverterService : nsISupports {
  static const char[] IID_STR = NS_IWEBCONTENTCONVERTERSERVICE_IID_STR;
  static const nsIID IID = NS_IWEBCONTENTCONVERTERSERVICE_IID;

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
  nsresult SetAutoHandler(nsAString * contentType, nsIWebContentHandlerInfo handler);

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
  nsresult GetAutoHandler(nsAString * contentType, nsIWebContentHandlerInfo *_retval);

  /**
   * Gets a web handler for the specified service URI
   * @param   contentType
   *          The content type of the service being located
   * @param   uri
   *          The service URI of the handler to locate.
   * @returns A web service handler that uses the specified uri.
   */
  /* nsIWebContentHandlerInfo getWebContentHandlerByURI (in AString contentType, in AString uri); */
  nsresult GetWebContentHandlerByURI(nsAString * contentType, nsAString * uri, nsIWebContentHandlerInfo *_retval);

  /**
   * Loads the preferred handler when content of a registered type is about
   * to be loaded.
   * @param   request
   *          The nsIRequest for the load of the content
   */
  /* void loadPreferredHandler (in nsIRequest request); */
  nsresult LoadPreferredHandler(nsIRequest request);

  /**
   * Removes a registered protocol handler
   * @param   protocol
   *          The protocol scheme to remove a service handler for
   * @param   uri
   *          The uri of the service handler to remove
   */
  /* void removeProtocolHandler (in AString protocol, in AString uri); */
  nsresult RemoveProtocolHandler(nsAString * protocol, nsAString * uri);

  /**
   * Removes a registered content handler
   * @param   contentType
   *          The content type to remove a service handler for
   * @param   uri
   *          The uri of the service handler to remove
   */
  /* void removeContentHandler (in AString contentType, in AString uri); */
  nsresult RemoveContentHandler(nsAString * contentType, nsAString * uri);

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
  nsresult RegisterProtocolHandler(nsAString * scheme, nsAString * uri, nsAString * title);

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
  nsresult RegisterContentHandler(nsAString * contentType, nsAString * uri, nsAString * title);

  /**
   * Gets the list of content handlers for a particular type.
   * @param   contentType
   *          The content type to get handlers for
   * @returns An array of nsIWebContentHandlerInfo objects
   */
  /* void getContentHandlers (in AString contentType, out unsigned long count, [array, size_is (count), retval] out nsIWebContentHandlerInfo handlers); */
  nsresult GetContentHandlers(nsAString * contentType, PRUint32 *count, nsIWebContentHandlerInfo **handlers);

  /**
   * Resets the list of available content handlers to the default set from
   * the distribution.
   * @param   contentType
   *          The content type to reset handlers for
   */
  /* void resetHandlersForType (in AString contentType); */
  nsresult ResetHandlersForType(nsAString * contentType);

}

