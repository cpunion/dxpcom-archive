/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpChannel.idl
 */

module mozilla.dxpcom.nsIHttpChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHttpChannel;


public import mozilla.dxpcom.nsIHttpChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIHttpHeaderVisitor;

public import mozilla.dxpcom.nsIHttpHeaderVisitorD;


/* starting wrapper class:    nsIHttpChannel */
/**
 * nsIHttpChannel
 *
 * This interface allows for the modification of HTTP request parameters and
 * the inspection of the resulting HTTP response status and headers when they
 * become available.
 *
 * @status FROZEN
 */
class nsIHttpChannelD : public nsIChannelD {

  static const nsIID IID = NS_IHTTPCHANNEL_IID;


  alias nsIHttpChannel InnerType;

  this(nsIHttpChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIHttpChannel opCast() {
    return inner;
  }

  void opAssign(nsIHttpChannel value) {
    inner = value;
  }

  /**************************************************************************
     * REQUEST CONFIGURATION
     *
     * Modifying request parameters after asyncOpen has been called is an error.
     */
/**
     * Set/get the HTTP request method (default is "GET").  Setter is case
     * insensitive; getter returns an uppercase string.
     *
     * This attribute may only be set before the channel is opened.
     *
     * NOTE: The data for a "POST" or "PUT" request can be configured via
     * nsIUploadChannel; however, after setting the upload data, it may be
     * necessary to set the request method explicitly.  The documentation
     * for nsIUploadChannel has further details.
     *
     * @throws NS_ERROR_IN_PROGRESS if set after the channel has been opened.
     */
  /* attribute ACString requestMethod; */
  char[] RequestMethod(){
    scope auto value = new ACString();
    nsresult __result = inner.GetRequestMethod(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void RequestMethod(char[] aRequestMethod){
    scope auto value = new ACString(aRequestMethod);
    nsresult __result = inner.SetRequestMethod(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Get/set the HTTP referrer URI.  This is the address (URI) of the
     * resource from which this channel's URI was obtained (see RFC2616 section
     * 14.36).
     * 
     * This attribute may only be set before the channel is opened.
     *
     * NOTE: The channel may silently refuse to set the Referer header if the
     * URI does not pass certain security checks (e.g., a "https://" URL will
     * never be sent as the referrer for a plaintext HTTP request).  The
     * implementation is not required to throw an exception when the referrer
     * URI is rejected.
     *
     * @throws NS_ERROR_IN_PROGRESS if set after the channel has been opened.
     */
  /* attribute nsIURI referrer; */
  nsIURID  Referrer(){
    nsIURI value;
    nsresult __result = inner.GetReferrer(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Referrer(nsIURID  aReferrer){
    nsIURI value;
    nsresult __result = inner.SetReferrer(value);
    CheckException(__result);
  }

  /**
     * Get the value of a particular request header.
     *
     * @param aHeader
     *        The case-insensitive name of the request header to query (e.g.,
     *        "Cache-Control").
     *
     * @return the value of the request header.
     * @throws NS_ERROR_NOT_AVAILABLE if the header is not set.
     */
  /* ACString getRequestHeader (in ACString aHeader); */
  char[] GetRequestHeader(char[] aHeader){
    scope auto _aHeader = new ACString(aHeader);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetRequestHeader(cast(nsACString*)_aHeader, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Set the value of a particular request header.
     *
     * This method allows, for example, the cookies module to add "Cookie"
     * headers to the outgoing HTTP request.
     *
     * This method may only be called before the channel is opened.
     *
     * @param aHeader
     *        The case-insensitive name of the request header to set (e.g.,
     *        "Cookie").
     * @param aValue
     *        The request header value to set (e.g., "X=1").
     * @param aMerge
     *        If true, the new header value will be merged with any existing
     *        values for the specified header.  This flag is ignored if the
     *        specified header does not support merging (e.g., the "Content-
     *        Type" header can only have one value).  The list of headers for
     *        which this flag is ignored is an implementation detail.  If this
     *        flag is false, then the header value will be replaced with the
     *        contents of |aValue|.
     *
     * If aValue is empty and aMerge is false, the header will be cleared.
     *
     * @throws NS_ERROR_IN_PROGRESS if called after the channel has been
     *         opened.
     */
  /* void setRequestHeader (in ACString aHeader, in ACString aValue, in boolean aMerge); */
  void SetRequestHeader(char[] aHeader, char[] aValue, PRBool aMerge){
    scope auto _aHeader = new ACString(aHeader);
    scope auto _aValue = new ACString(aValue);
    nsresult __result = inner.SetRequestHeader(cast(nsACString*)_aHeader, cast(nsACString*)_aValue, aMerge);
    CheckException(__result);
  }

  /**
     * Call this method to visit all request headers.  Calling setRequestHeader
     * while visiting request headers has undefined behavior.  Don't do it!
     *
     * @param aVisitor
     *        the header visitor instance.
     */
  /* void visitRequestHeaders (in nsIHttpHeaderVisitor aVisitor); */
  void VisitRequestHeaders(nsIHttpHeaderVisitorD aVisitor){
    nsresult __result = inner.VisitRequestHeaders(aVisitor ? cast(nsIHttpHeaderVisitor)aVisitor : null);
    CheckException(__result);
  }

  /**
     * This attribute is a hint to the channel to indicate whether or not
     * the underlying HTTP transaction should be allowed to be pipelined
     * with other transactions.  This should be set to FALSE, for example,
     * if the application knows that the corresponding document is likely
     * to be very large.
     *
     * This attribute is true by default, though other factors may prevent
     * pipelining.
     *
     * This attribute may only be set before the channel is opened.
     *
     * @throws NS_ERROR_FAILURE if set after the channel has been opened.
     */
  /* attribute boolean allowPipelining; */
  PRBool AllowPipelining(){
    PRBool value;
    nsresult __result = inner.GetAllowPipelining(&value);
    CheckException(__result);
    return value;
  }
  void AllowPipelining(PRBool aAllowPipelining){
    nsresult __result = inner.SetAllowPipelining(aAllowPipelining);
    CheckException(__result);
  }

  /**
     * This attribute specifies the number of redirects this channel is allowed
     * to make.  If zero, the channel will fail to redirect and will generate
     * a NS_ERROR_REDIRECT_LOOP failure status.
     *
     * NOTE: An HTTP redirect results in a new channel being created.  If the
     * new channel supports nsIHttpChannel, then it will be assigned a value
     * to its |redirectionLimit| attribute one less than the value of the
     * redirected channel's |redirectionLimit| attribute.  The initial value
     * for this attribute may be a configurable preference (depending on the
     * implementation).
     */
  /* attribute unsigned long redirectionLimit; */
  PRUint32 RedirectionLimit(){
    PRUint32 value;
    nsresult __result = inner.GetRedirectionLimit(&value);
    CheckException(__result);
    return value;
  }
  void RedirectionLimit(PRUint32 aRedirectionLimit){
    nsresult __result = inner.SetRedirectionLimit(aRedirectionLimit);
    CheckException(__result);
  }

  /**************************************************************************
     * RESPONSE INFO
     *
     * Accessing response info before the onStartRequest event is an error.
     */
/**
     * Get the HTTP response code (e.g., 200).
     *
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest).
     */
  /* readonly attribute unsigned long responseStatus; */
  PRUint32 ResponseStatus(){
    PRUint32 value;
    nsresult __result = inner.GetResponseStatus(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the HTTP response status text (e.g., "OK").
     *
     * NOTE: This returns the raw (possibly 8-bit) text from the server.  There
     * are no assumptions made about the charset of the returned text.  You
     * have been warned!
     *
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest).
     */
  /* readonly attribute ACString responseStatusText; */
  char[] ResponseStatusText(){
    scope auto value = new ACString();
    nsresult __result = inner.GetResponseStatusText(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Returns true if the HTTP response code indicates success.  The value of
     * nsIRequest::status will be NS_OK even when processing a 404 response
     * because a 404 response may include a message body that (in some cases)
     * should be shown to the user.
     *
     * Use this attribute to distinguish server error pages from normal pages,
     * instead of comparing the response status manually against the set of
     * valid response codes, if that is required by your application.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest).
     */
  /* readonly attribute boolean requestSucceeded; */
  PRBool RequestSucceeded(){
    PRBool value;
    nsresult __result = inner.GetRequestSucceeded(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the value of a particular response header.
     *
     * @param aHeader
     *        The case-insensitive name of the response header to query (e.g.,
     *        "Set-Cookie").
     *
     * @return the value of the response header.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest) or if the header is
     *         not set in the response.
     */
  /* ACString getResponseHeader (in ACString header); */
  char[] GetResponseHeader(char[] header){
    scope auto _header = new ACString(header);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetResponseHeader(cast(nsACString*)_header, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Set the value of a particular response header.
     *
     * This method allows, for example, the HTML content sink to inform the HTTP
     * channel about HTTP-EQUIV headers found in HTML <META> tags.
     *
     * @param aHeader
     *        The case-insensitive name of the response header to set (e.g.,
     *        "Cache-control").
     * @param aValue
     *        The response header value to set (e.g., "no-cache").
     * @param aMerge
     *        If true, the new header value will be merged with any existing
     *        values for the specified header.  This flag is ignored if the
     *        specified header does not support merging (e.g., the "Content-
     *        Type" header can only have one value).  The list of headers for
     *        which this flag is ignored is an implementation detail.  If this
     *        flag is false, then the header value will be replaced with the
     *        contents of |aValue|.
     *
     * If aValue is empty and aMerge is false, the header will be cleared.
     * 
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest).
     * @throws NS_ERROR_ILLEGAL_VALUE if changing the value of this response
     *         header is not allowed.
     */
  /* void setResponseHeader (in ACString header, in ACString value, in boolean merge); */
  void SetResponseHeader(char[] header, char[] value, PRBool merge){
    scope auto _header = new ACString(header);
    scope auto _value = new ACString(value);
    nsresult __result = inner.SetResponseHeader(cast(nsACString*)_header, cast(nsACString*)_value, merge);
    CheckException(__result);
  }

  /**
     * Call this method to visit all response headers.  Calling
     * setResponseHeader while visiting response headers has undefined
     * behavior.  Don't do it!
     *
     * @param aVisitor
     *        the header visitor instance.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest).
     */
  /* void visitResponseHeaders (in nsIHttpHeaderVisitor aVisitor); */
  void VisitResponseHeaders(nsIHttpHeaderVisitorD aVisitor){
    nsresult __result = inner.VisitResponseHeaders(aVisitor ? cast(nsIHttpHeaderVisitor)aVisitor : null);
    CheckException(__result);
  }

  /**
     * Returns true if the server sent a "Cache-Control: no-store" response
     * header.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest).
     */
  /* boolean isNoStoreResponse (); */
  PRBool IsNoStoreResponse(){
    PRBool _retval;
    nsresult __result = inner.IsNoStoreResponse(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Returns true if the server sent the equivalent of a "Cache-control:
     * no-cache" response header.  Equivalent response headers include:
     * "Pragma: no-cache", "Expires: 0", and "Expires" with a date value
     * in the past relative to the value of the "Date" header.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if called before the response
     *         has been received (before onStartRequest).
     */
  /* boolean isNoCacheResponse (); */
  PRBool IsNoCacheResponse(){
    PRBool _retval;
    nsresult __result = inner.IsNoCacheResponse(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIHttpChannel inner;

}

