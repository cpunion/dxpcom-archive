/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXMLHttpRequest.idl
 */

module mozilla.xpcom.nsIXMLHttpRequest;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMEventListener; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */


/* starting interface:    nsIXMLHttpRequest */
const char[] NS_IXMLHTTPREQUEST_IID_STR = "7b3b3c62-9d53-4abc-bc89-c33ce78f439f";

const nsIID NS_IXMLHTTPREQUEST_IID= 
  {0x7b3b3c62, 0x9d53, 0x4abc, 
    [ 0xbc, 0x89, 0xc3, 0x3c, 0xe7, 0x8f, 0x43, 0x9f ]};

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
extern(Windows)
interface nsIXMLHttpRequest : nsISupports {
  static const char[] IID_STR = NS_IXMLHTTPREQUEST_IID_STR;
  static const nsIID IID = NS_IXMLHTTPREQUEST_IID;

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
  nsresult GetChannel(nsIChannel  *aChannel);

  /**
   * The response to the request is parsed as if it were a
   * text/xml stream. This attributes represents the response as
   * a DOM Document object. NULL if the request is unsuccessful or
   * has not yet been sent.
   */
  /* readonly attribute nsIDOMDocument responseXML; */
  nsresult GetResponseXML(nsIDOMDocument  *aResponseXML);

  /**
   * The response to the request as text.
   * NULL if the request is unsuccessful or
   * has not yet been sent.
   */
  /* readonly attribute AString responseText; */
  nsresult GetResponseText(nsAString * aResponseText);

  /**
   * The status of the response to the request for HTTP requests.
   */
  /* readonly attribute unsigned long status; */
  nsresult GetStatus(PRUint32 *aStatus);

  /**
   * The string representing the status of the response for
   * HTTP requests.
   */
  /* readonly attribute AUTF8String statusText; */
  nsresult GetStatusText(nsACString * aStatusText);

  /**
   * If the request has been sent already, this method will
   * abort the request.
   */
  /* void abort (); */
  nsresult Abort();

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
  nsresult GetAllResponseHeaders(char **_retval);

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
  nsresult GetResponseHeader(nsACString * header, nsACString * _retval);

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
  nsresult OpenRequest(nsACString * method, nsACString * url, PRBool async, nsAString * user, nsAString * password);

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
  nsresult Open(nsACString * method, nsACString * url);

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
  nsresult Send(nsIVariant body_);

  /**
   * Sets a HTTP request header for HTTP requests. You must call open
   * before setting the request headers.
   *
   * @param header The name of the header to set in the request.
   * @param value The body of the header.
   */
  /* void setRequestHeader (in AUTF8String header, in AUTF8String value); */
  nsresult SetRequestHeader(nsACString * header, nsACString * value);

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
  nsresult GetReadyState(PRInt32 *aReadyState);

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
  nsresult OverrideMimeType(nsACString * mimetype);

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
  nsresult GetMultipart(PRBool *aMultipart);
  nsresult SetMultipart(PRBool aMultipart);

}


/* starting interface:    nsIOnReadyStateChangeHandler */
const char[] NS_IONREADYSTATECHANGEHANDLER_IID_STR = "6459b7ce-6b57-4934-a0af-0133ba6f9085";

const nsIID NS_IONREADYSTATECHANGEHANDLER_IID= 
  {0x6459b7ce, 0x6b57, 0x4934, 
    [ 0xa0, 0xaf, 0x01, 0x33, 0xba, 0x6f, 0x90, 0x85 ]};

extern(Windows)
interface nsIOnReadyStateChangeHandler : nsISupports {
  static const char[] IID_STR = NS_IONREADYSTATECHANGEHANDLER_IID_STR;
  static const nsIID IID = NS_IONREADYSTATECHANGEHANDLER_IID;

  /**
   * Helper to implement the onreadystatechange callback member.
   * You should not need to use this.
   */
  /* void handleEvent (); */
  nsresult HandleEvent();

}


/* starting interface:    nsIJSXMLHttpRequest */
const char[] NS_IJSXMLHTTPREQUEST_IID_STR = "9deabc90-28d5-41d3-a660-474f2254f4ba";

const nsIID NS_IJSXMLHTTPREQUEST_IID= 
  {0x9deabc90, 0x28d5, 0x41d3, 
    [ 0xa6, 0x60, 0x47, 0x4f, 0x22, 0x54, 0xf4, 0xba ]};

extern(Windows)
interface nsIJSXMLHttpRequest : nsISupports {
  static const char[] IID_STR = NS_IJSXMLHTTPREQUEST_IID_STR;
  static const nsIID IID = NS_IJSXMLHTTPREQUEST_IID;

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
  nsresult GetOnload(nsIDOMEventListener  *aOnload);
  nsresult SetOnload(nsIDOMEventListener  aOnload);

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
  nsresult GetOnerror(nsIDOMEventListener  *aOnerror);
  nsresult SetOnerror(nsIDOMEventListener  aOnerror);

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
  nsresult GetOnprogress(nsIDOMEventListener  *aOnprogress);
  nsresult SetOnprogress(nsIDOMEventListener  aOnprogress);

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
  nsresult GetOnreadystatechange(nsIOnReadyStateChangeHandler  *aOnreadystatechange);
  nsresult SetOnreadystatechange(nsIOnReadyStateChangeHandler  aOnreadystatechange);

}

