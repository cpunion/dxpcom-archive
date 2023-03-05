/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXMLHttpRequest.idl
 */

module mozilla.dxpcom.nsIXMLHttpRequestD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXMLHttpRequest;


public import mozilla.dxpcom.nsIXMLHttpRequestD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.dxpcom.nsIDOMEventListenerD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    nsIXMLHttpRequest */
/**
 * Mozilla's XMLHttpRequest is modelled after Microsoft's IXMLHttpRequest
 * object. The goal has been to make Mozilla's version match Microsoft's
 * version as closely as possible, but there are bound to be some differences.
 *
 * In general, Microsoft's documentation for IXMLHttpRequest can be used.
 * Mozilla's interface definitions provide some additional documentation. The
 * web page to look at is http://www.mozilla.org/xmlextras/
 *
 * Mozilla's XMLHttpRequest object can be created in JavaScript like this:
 *   new XMLHttpRequest()
 * compare to Internet Explorer:
 *   new ActiveXObject("Msxml2.XMLHTTP")
 *
 * From JavaScript, the methods and properties visible in the XMLHttpRequest
 * object are a combination of nsIXMLHttpRequest and nsIJSXMLHttpRequest;
 * there is no need to differentiate between those interfaces.
 *
 * From native code, the way to set up onload and onerror handlers is a bit
 * different. Here is a comment from Johnny Stenback <jst@netscape.com>:
 *
 *   The mozilla implementation of nsIXMLHttpRequest implements the interface
 *   nsIDOMEventTarget and that's how you're supported to add event listeners.
 *   Try something like this:
 *
 *   nsCOMPtr<nsIDOMEventTarget> target(do_QueryInterface(myxmlhttpreq));
 *
 *   target->AddEventListener(NS_LITERAL_STRING("load"), mylistener,
 *                            PR_FALSE)
 *
 *   where mylistener is your event listener object that implements the
 *   interface nsIDOMEventListener.
 *
 *   The 'onload' and 'onerror' attributes moved to nsIJSXMLHttRequest,
 *   but if you're coding in C++ you should avoid using those.
 */
class nsIXMLHttpRequestD : public nsISupportsD {

  static const nsIID IID = NS_IXMLHTTPREQUEST_IID;


  alias nsIXMLHttpRequest InnerType;

  this(nsIXMLHttpRequest intr){
    super(intr);
    this.inner = intr;
  }

  nsIXMLHttpRequest opCast() {
    return inner;
  }

  void opAssign(nsIXMLHttpRequest value) {
    inner = value;
  }

  /**
   * The request uses a channel in order to perform the
   * request.  This attribute represents the channel used
   * for the request.  NULL if the channel has not yet been
   * created.
   *
   * In a multipart request case, this is the initial channel, not the
   * different parts in the multipart request.
   *
   * Mozilla only. Requires elevated privileges to access.
   */
  /* readonly attribute nsIChannel channel; */
  nsIChannelD  Channel(){
    nsIChannel value;
    nsresult __result = inner.GetChannel(&value);
    CheckException(__result);
    return new nsIChannelD(value);
  }

  /**
   * The response to the request is parsed as if it were a
   * text/xml stream. This attributes represents the response as
   * a DOM Document object. NULL if the request is unsuccessful or
   * has not yet been sent.
   */
  /* readonly attribute nsIDOMDocument responseXML; */
  nsIDOMDocumentD  ResponseXML(){
    nsIDOMDocument value;
    nsresult __result = inner.GetResponseXML(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /**
   * The response to the request as text.
   * NULL if the request is unsuccessful or
   * has not yet been sent.
   */
  /* readonly attribute AString responseText; */
  wchar[] ResponseText(){
    scope auto value = new AString();
    nsresult __result = inner.GetResponseText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The status of the response to the request for HTTP requests.
   */
  /* readonly attribute unsigned long status; */
  PRUint32 Status(){
    PRUint32 value;
    nsresult __result = inner.GetStatus(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The string representing the status of the response for
   * HTTP requests.
   */
  /* readonly attribute AUTF8String statusText; */
  char[] StatusText(){
    scope auto value = new ACString();
    nsresult __result = inner.GetStatusText(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * If the request has been sent already, this method will
   * abort the request.
   */
  /* void abort (); */
  void Abort(){
    nsresult __result = inner.Abort();
    CheckException(__result);
  }

  /**
   * Returns all of the response headers as a string for HTTP
   * requests.
   *
   * Note that this will return all the headers from the *current*
   * part of a multipart request, not from the original channel.
   *
   * @returns A string containing all of the response headers.
   *          NULL if the response has not yet been received.
   */
  /* string getAllResponseHeaders (); */
  char* GetAllResponseHeaders(){
    char* _retval;
    nsresult __result = inner.GetAllResponseHeaders(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the text of the header with the specified name for
   * HTTP requests.
   *
   * @param header The name of the header to retrieve
   * @returns A string containing the text of the header specified.
   *          NULL if the response has not yet been received or the
   *          header does not exist in the response.
   */
  /* ACString getResponseHeader (in AUTF8String header); */
  char[] GetResponseHeader(char[] header){
    scope auto _header = new ACString(header);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetResponseHeader(cast(nsACString*)_header, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Native (non-script) method to initialize a request. Note that
   * the request is not sent until the <code>send</code> method
   * is invoked.
   *
   * Will abort currently active loads.
   *
   * After the initial response, all event listeners will be cleared.
   * Call open() before setting new event listeners.
   *
   * @param method The HTTP method, for example "POST" or "GET". Ignored
   *               if the URL is not a HTTP(S) URL.
   * @param url The URL to which to send the request.
   * @param async Whether the request is synchronous or asynchronous
   *              i.e. whether send returns only after the response
   *              is received or if it returns immediately after
   *              sending the request. In the latter case, notification
   *              of completion is sent through the event listeners.
   *              This argument must be true if the multipart
   *              attribute has been set to true, or an exception will
   *              be thrown.
   * @param user A username for authentication if necessary.
   * @param password A password for authentication if necessary.
   */
  /* [noscript] void openRequest (in AUTF8String method, in AUTF8String url, in boolean async, in AString user, in AString password); */
  void OpenRequest(char[] method, char[] url, PRBool async, wchar[] user, wchar[] password){
    scope auto _method = new ACString(method);
    scope auto _url = new ACString(url);
    scope auto _user = new AString(user);
    scope auto _password = new AString(password);
    nsresult __result = inner.OpenRequest(cast(nsACString*)_method, cast(nsACString*)_url, async, cast(nsAString*)_user, cast(nsAString*)_password);
    CheckException(__result);
  }

  /**
   * Meant to be a script-only method for initializing a request.
   * The parameters are similar to the ones detailed in the
   * description of <code>openRequest</code>, but the last
   * 3 are optional.
   *
   * Will abort currently active loads.
   *
   * After the initial response, all event listeners will be cleared.
   * Call open() before setting new event listeners.
   *
   * @param method The HTTP method - either "POST" or "GET". Ignored
   *               if the URL is not a HTTP URL.
   * @param url The URL to which to send the request.
   * @param async (optional) Whether the request is synchronous or
   *              asynchronous i.e. whether send returns only after
   *              the response is received or if it returns immediately after
   *              sending the request. In the latter case, notification
   *              of completion is sent through the event listeners.
   *              The default value is true.
   *              This argument must be true if the multipart
   *              attribute has been set to true, or an exception will
   *              be thrown.
   * @param user (optional) A username for authentication if necessary.
   *             The default value is the empty string
   * @param password (optional) A password for authentication if necessary.
   *                 The default value is the empty string
   */
  /* void open (in AUTF8String method, in AUTF8String url); */
  void Open(char[] method, char[] url){
    scope auto _method = new ACString(method);
    scope auto _url = new ACString(url);
    nsresult __result = inner.Open(cast(nsACString*)_method, cast(nsACString*)_url);
    CheckException(__result);
  }

  /**
   * Sends the request. If the request is asynchronous, returns
   * immediately after sending the request. If it is synchronous
   * returns only after the response has been received.
   *
   * After the initial response, all event listeners will be cleared.
   * Call open() before setting new event listeners.
   *
   * @param body Either an instance of nsIDOMDocument, nsIInputStream
   *             or a string (nsISupportsString in the native calling
   *             case). This is used to populate the body of the
   *             HTTP request if the HTTP request method is "POST".
   *             If the parameter is a nsIDOMDocument, it is serialized.
   *             If the parameter is a nsIInputStream, then it must be
   *             compatible with nsIUploadChannel.setUploadStream, and a
   *             Content-Length header will be added to the HTTP request
   *             with a value given by nsIInputStream.available.  Any
   *             headers included at the top of the stream will be
   *             treated as part of the message body.  The MIME type of
   *             the stream should be specified by setting the Content-
   *             Type header via the setRequestHeader method before
   *             calling send.
   */
  /* void send (in nsIVariant body); */
  void Send(nsIVariantD body_){
    nsresult __result = inner.Send(body_ ? cast(nsIVariant)body_ : null);
    CheckException(__result);
  }

  /**
   * Sets a HTTP request header for HTTP requests. You must call open
   * before setting the request headers.
   *
   * @param header The name of the header to set in the request.
   * @param value The body of the header.
   */
  /* void setRequestHeader (in AUTF8String header, in AUTF8String value); */
  void SetRequestHeader(char[] header, char[] value){
    scope auto _header = new ACString(header);
    scope auto _value = new ACString(value);
    nsresult __result = inner.SetRequestHeader(cast(nsACString*)_header, cast(nsACString*)_value);
    CheckException(__result);
  }

  /**
   * The state of the request.
   *
   * Possible values:
   *   0 UNINITIALIZED open() has not been called yet.
   *   1 LOADING       send() has not been called yet.
   *   2 LOADED        send() has been called, headers and status are available.
   *   3 INTERACTIVE   Downloading, responseText holds the partial data.
   *   4 COMPLETED     Finished with all operations.
   */
  /* readonly attribute long readyState; */
  PRInt32 ReadyState(){
    PRInt32 value;
    nsresult __result = inner.GetReadyState(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Override the mime type returned by the server (if any). This may
   * be used, for example, to force a stream to be treated and parsed
   * as text/xml, even if the server does not report it as such. This
   * must be done before the <code>send</code> method is invoked.
   *
   * @param mimetype The type used to override that returned by the server
   *                 (if any).
   */
  /* void overrideMimeType (in AUTF8String mimetype); */
  void OverrideMimeType(char[] mimetype){
    scope auto _mimetype = new ACString(mimetype);
    nsresult __result = inner.OverrideMimeType(cast(nsACString*)_mimetype);
    CheckException(__result);
  }

  /**
   * Set to true if the response is expected to be a stream of
   * possibly multiple (XML) documents. If set to true, the content
   * type of the initial response must be multipart/x-mixed-replace or
   * an error will be triggerd. All requests must be asynchronous.
   *
   * This enables server push. For each XML document that's written to
   * this request, a new XML DOM document is created and the onload
   * handler is called inbetween documents. Note that when this is
   * set, the onload handler and other event handlers are not reset
   * after the first XML document is loaded, and the onload handler
   * will be called as each part of the response is received.
   */
  /* attribute boolean multipart; */
  PRBool Multipart(){
    PRBool value;
    nsresult __result = inner.GetMultipart(&value);
    CheckException(__result);
    return value;
  }
  void Multipart(PRBool aMultipart){
    nsresult __result = inner.SetMultipart(aMultipart);
    CheckException(__result);
  }

private:
  nsIXMLHttpRequest inner;

}


/* starting wrapper class:    nsIOnReadyStateChangeHandler */
class nsIOnReadyStateChangeHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IONREADYSTATECHANGEHANDLER_IID;


  alias nsIOnReadyStateChangeHandler InnerType;

  this(nsIOnReadyStateChangeHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIOnReadyStateChangeHandler opCast() {
    return inner;
  }

  void opAssign(nsIOnReadyStateChangeHandler value) {
    inner = value;
  }

  /**
   * Helper to implement the onreadystatechange callback member.
   * You should not need to use this.
   */
  /* void handleEvent (); */
  void HandleEvent(){
    nsresult __result = inner.HandleEvent();
    CheckException(__result);
  }

private:
  nsIOnReadyStateChangeHandler inner;

}


/* starting wrapper class:    nsIJSXMLHttpRequest */
class nsIJSXMLHttpRequestD : public nsISupportsD {

  static const nsIID IID = NS_IJSXMLHTTPREQUEST_IID;


  alias nsIJSXMLHttpRequest InnerType;

  this(nsIJSXMLHttpRequest intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSXMLHttpRequest opCast() {
    return inner;
  }

  void opAssign(nsIJSXMLHttpRequest value) {
    inner = value;
  }

  /**
   * Meant to be a script-only mechanism for setting a load event listener.
   * The attribute is expected to be JavaScript function object. When
   * the load event occurs, the function is invoked.
   * This attribute should not be used from native code!!
   *
   * After the initial response, all event listeners will be cleared.
   * Call open() before setting new event listeners.
   *
   * Mozilla only.
   */
  /* attribute nsIDOMEventListener onload; */
  nsIDOMEventListenerD  Onload(){
    nsIDOMEventListener value;
    nsresult __result = inner.GetOnload(&value);
    CheckException(__result);
    return new nsIDOMEventListenerD(value);
  }
  void Onload(nsIDOMEventListenerD  aOnload){
    nsIDOMEventListener value;
    nsresult __result = inner.SetOnload(value);
    CheckException(__result);
  }

  /**
   * Meant to be a script-only mechanism for setting an error event listener.
   * The attribute is expected to be JavaScript function object. When
   * the error event occurs, the function is invoked.
   * This attribute should not be used from native code!!
   *
   * After the initial response, all event listeners will be cleared.
   * Call open() before setting new event listeners.
   *
   * Mozilla only.
   */
  /* attribute nsIDOMEventListener onerror; */
  nsIDOMEventListenerD  Onerror(){
    nsIDOMEventListener value;
    nsresult __result = inner.GetOnerror(&value);
    CheckException(__result);
    return new nsIDOMEventListenerD(value);
  }
  void Onerror(nsIDOMEventListenerD  aOnerror){
    nsIDOMEventListener value;
    nsresult __result = inner.SetOnerror(value);
    CheckException(__result);
  }

  /**
   * Meant to be a script-only mechanism for setting a progress event listener.
   * The attribute is expected to be JavaScript function object. When
   * the error event occurs, the function is invoked.
   * This attribute should not be used from native code!!
   * This event listener may be called multiple times during the open request.
   *
   * After the initial response, all event listeners will be cleared.
   * Call open() before setting new event listeners.
   *
   * Mozilla only.
   */
  /* attribute nsIDOMEventListener onprogress; */
  nsIDOMEventListenerD  Onprogress(){
    nsIDOMEventListener value;
    nsresult __result = inner.GetOnprogress(&value);
    CheckException(__result);
    return new nsIDOMEventListenerD(value);
  }
  void Onprogress(nsIDOMEventListenerD  aOnprogress){
    nsIDOMEventListener value;
    nsresult __result = inner.SetOnprogress(value);
    CheckException(__result);
  }

  /**
   * Meant to be a script-only mechanism for setting a callback function.
   * The attribute is expected to be JavaScript function object. When the
   * readyState changes, the callback function will be called.
   * This attribute should not be used from native code!!
   *
   * After the initial response, all event listeners will be cleared.
   * Call open() before setting new event listeners.
   */
  /* attribute nsIOnReadyStateChangeHandler onreadystatechange; */
  nsIOnReadyStateChangeHandlerD  Onreadystatechange(){
    nsIOnReadyStateChangeHandler value;
    nsresult __result = inner.GetOnreadystatechange(&value);
    CheckException(__result);
    return new nsIOnReadyStateChangeHandlerD(value);
  }
  void Onreadystatechange(nsIOnReadyStateChangeHandlerD  aOnreadystatechange){
    nsIOnReadyStateChangeHandler value;
    nsresult __result = inner.SetOnreadystatechange(value);
    CheckException(__result);
  }

private:
  nsIJSXMLHttpRequest inner;

}

