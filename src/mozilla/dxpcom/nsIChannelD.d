/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChannel.idl
 */

module mozilla.dxpcom.nsIChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIChannel;


public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;


/* starting wrapper class:    nsIChannel */
/**
 * The nsIChannel interface allows clients to construct "GET" requests for
 * specific protocols, and manage them in a uniform way.  Once a channel is
 * created (via nsIIOService::newChannel), parameters for that request may
 * be set by using the channel attributes, or by QI'ing to a subclass of
 * nsIChannel for protocol-specific parameters.  Then, the URI can be fetched
 * by calling nsIChannel::open or nsIChannel::asyncOpen.
 *
 * After a request has been completed, the channel is still valid for accessing
 * protocol-specific results.  For example, QI'ing to nsIHttpChannel allows
 * response headers to be retrieved for the corresponding http transaction. 
 *
 * @status FROZEN
 */
class nsIChannelD : public nsIRequestD {

  static const nsIID IID = NS_ICHANNEL_IID;


  alias nsIChannel InnerType;

  this(nsIChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIChannel opCast() {
    return inner;
  }

  void opAssign(nsIChannel value) {
    inner = value;
  }

  /**
     * The original URI used to construct the channel. This is used in the case
     * of a redirect or URI "resolution" (e.g. resolving a resource: URI to a
     * file: URI) so that the original pre-redirect URI can still be obtained. 
     *
     * NOTE: this is distinctly different from the http Referer (referring URI),
     * which is typically the page that contained the original URI (accessible
     * from nsIHttpChannel).
     */
  /* attribute nsIURI originalURI; */
  nsIURID  OriginalURI(){
    nsIURI value;
    nsresult __result = inner.GetOriginalURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void OriginalURI(nsIURID  aOriginalURI){
    nsIURI value;
    nsresult __result = inner.SetOriginalURI(value);
    CheckException(__result);
  }

  /**
     * The URI corresponding to the channel.  Its value is immutable.
     */
  /* readonly attribute nsIURI URI; */
  nsIURID  URI(){
    nsIURI value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
     * The owner, corresponding to the entity that is responsible for this
     * channel.  Used by the security manager to grant or deny privileges to
     * mobile code loaded from this channel.
     *
     * NOTE: this is a strong reference to the owner, so if the owner is also
     * holding a strong reference to the channel, care must be taken to 
     * explicitly drop its reference to the channel.
     */
  /* attribute nsISupports owner; */
  nsISupportsD  Owner(){
    nsISupports value;
    nsresult __result = inner.GetOwner(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Owner(nsISupportsD  aOwner){
    nsISupports value;
    nsresult __result = inner.SetOwner(value);
    CheckException(__result);
  }

  /**
     * The notification callbacks for the channel.  This is set by clients, who
     * wish to provide a means to receive progress, status and protocol-specific 
     * notifications.  If this value is NULL, the channel implementation may use
     * the notification callbacks from its load group.  The channel may also
     * query the notification callbacks from its load group if its notification
     * callbacks do not supply the requested interface.
     * 
     * Interfaces commonly requested include: nsIProgressEventSink, nsIPrompt,
     * and nsIAuthPrompt.
     *
     * When the channel is done, it must not continue holding references to
     * this object.
     *
     * NOTE: A channel implementation should take care when "caching" an
     * interface pointer queried from its notification callbacks.  If the
     * notification callbacks are changed, then a cached interface pointer may
     * become invalid and may therefore need to be re-queried.
     */
  /* attribute nsIInterfaceRequestor notificationCallbacks; */
  nsIInterfaceRequestorD  NotificationCallbacks(){
    nsIInterfaceRequestor value;
    nsresult __result = inner.GetNotificationCallbacks(&value);
    CheckException(__result);
    return new nsIInterfaceRequestorD(value);
  }
  void NotificationCallbacks(nsIInterfaceRequestorD  aNotificationCallbacks){
    nsIInterfaceRequestor value;
    nsresult __result = inner.SetNotificationCallbacks(value);
    CheckException(__result);
  }

  /**
     * Transport-level security information (if any) corresponding to the channel.
     */
  /* readonly attribute nsISupports securityInfo; */
  nsISupportsD  SecurityInfo(){
    nsISupports value;
    nsresult __result = inner.GetSecurityInfo(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /**
     * The MIME type of the channel's content if available. 
     * 
     * NOTE: the content type can often be wrongly specified (e.g., wrong file
     * extension, wrong MIME type, wrong document type stored on a server, etc.),
     * and the caller most likely wants to verify with the actual data.
     *
     * Setting contentType before the channel has been opened provides a hint
     * to the channel as to what the MIME type is.  The channel may ignore this
     * hint in deciding on the actual MIME type that it will report.
     *
     * Setting contentType after onStartRequest has been fired or after open()
     * is called will override the type determined by the channel.
     *
     * Setting contentType between the time that asyncOpen() is called and the
     * time when onStartRequest is fired has undefined behavior at this time.
     *
     * The value of the contentType attribute is a lowercase string.  A value
     * assigned to this attribute will be parsed and normalized as follows:
     *  1- any parameters (delimited with a ';') will be stripped.
     *  2- if a charset parameter is given, then its value will replace the
     *     the contentCharset attribute of the channel.
     *  3- the stripped contentType will be lowercased.
     * Any implementation of nsIChannel must follow these rules.
     */
  /* attribute ACString contentType; */
  char[] ContentType(){
    scope auto value = new ACString();
    nsresult __result = inner.GetContentType(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContentType(char[] aContentType){
    scope auto value = new ACString(aContentType);
    nsresult __result = inner.SetContentType(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The character set of the channel's content if available and if applicable.
     * This attribute only applies to textual data.
     *
     * The value of the contentCharset attribute is a mixedcase string.
     */
  /* attribute ACString contentCharset; */
  char[] ContentCharset(){
    scope auto value = new ACString();
    nsresult __result = inner.GetContentCharset(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContentCharset(char[] aContentCharset){
    scope auto value = new ACString(aContentCharset);
    nsresult __result = inner.SetContentCharset(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The length of the data associated with the channel if available.  A value
     * of -1 indicates that the content length is unknown.
     *
     * Callers should prefer getting the "content-length" property
     * as 64-bit value by QIing the channel to nsIPropertyBag2,
     * if that interface is exposed by the channel.
     */
  /* attribute long contentLength; */
  PRInt32 ContentLength(){
    PRInt32 value;
    nsresult __result = inner.GetContentLength(&value);
    CheckException(__result);
    return value;
  }
  void ContentLength(PRInt32 aContentLength){
    nsresult __result = inner.SetContentLength(aContentLength);
    CheckException(__result);
  }

  /**
     * Synchronously open the channel.
     *
     * @return blocking input stream to the channel's data.
     *
     * NOTE: nsIChannel implementations are not required to implement this
     * method.  Moreover, since this method may block the calling thread, it
     * should not be called on a thread that processes UI events.
     */
  /* nsIInputStream open (); */
  nsIInputStreamD  Open(){
    nsIInputStream _retval;
    nsresult __result = inner.Open(&_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

  /**
     * Asynchronously open this channel.  Data is fed to the specified stream
     * listener as it becomes available.  The stream listener's methods are
     * called on the thread that calls asyncOpen and are not called until
     * after asyncOpen returns.
     *
     * @param aListener the nsIStreamListener implementation
     * @param aContext an opaque parameter forwarded to aListener's methods
     */
  /* void asyncOpen (in nsIStreamListener aListener, in nsISupports aContext); */
  void AsyncOpen(nsIStreamListenerD aListener, nsISupportsD aContext){
    nsresult __result = inner.AsyncOpen(aListener ? cast(nsIStreamListener)aListener : null, aContext ? cast(nsISupports)aContext : null);
    CheckException(__result);
  }

  /**************************************************************************
     * Channel specific load flags:
     *
     * Bits 22-31 are reserved for future use by this interface or one of its
     * derivatives (e.g., see nsICachingChannel).
     */
/**
     * Set (e.g., by the docshell) to indicate whether or not the channel
     * corresponds to a document URI.
     */
  enum { LOAD_DOCUMENT_URI = 65536U }

  /** 
     * If the end consumer for this load has been retargeted after discovering 
     * it's content, this flag will be set:
     */
  enum { LOAD_RETARGETED_DOCUMENT_URI = 131072U }

  /**
     * This flag is set to indicate that onStopRequest may be followed by
     * another onStartRequest/onStopRequest pair.  This flag is, for example,
     * used by the multipart/replace stream converter.
     */
  enum { LOAD_REPLACE = 262144U }

  /**
     * Set (e.g., by the docshell) to indicate whether or not the channel
     * corresponds to an initial document URI load (e.g., link click).
     */
  enum { LOAD_INITIAL_DOCUMENT_URI = 524288U }

  /**
     * Set (e.g., by the URILoader) to indicate whether or not the end consumer
     * for this load has been determined.
     */
  enum { LOAD_TARGETED = 1048576U }

  /**
     * If this flag is set, the channel should call the content sniffers as
     * described in nsNetCID.h about NS_CONTENT_SNIFFER_CATEGORY.
     *
     * Note: Channels may ignore this flag; however, new channel implementations
     * should only do so with good reason.
     */
  enum { LOAD_CALL_CONTENT_SNIFFERS = 2097152U }

private:
  nsIChannel inner;

}

