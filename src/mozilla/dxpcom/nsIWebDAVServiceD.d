/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebDAVService.idl
 */

module mozilla.dxpcom.nsIWebDAVServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebDAVService;


public import mozilla.dxpcom.nsIWebDAVServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWebDAVListener;
public import mozilla.dxpcom.nsIWebDAVListenerD;
public import mozilla.xpcom.nsIWebDAVResource;
public import mozilla.dxpcom.nsIWebDAVResourceD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIWebDAVService */
class nsIWebDAVServiceD : public nsISupportsD {

  static const nsIID IID = NS_IWEBDAVSERVICE_IID;


  alias nsIWebDAVService InnerType;

  this(nsIWebDAVService intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebDAVService opCast() {
    return inner;
  }

  void opAssign(nsIWebDAVService value) {
    inner = value;
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void lockResources (in PRUint32 count, [array, size_is (count)] in nsIWebDAVResource resources, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void LockResources(PRUint32 count, nsIWebDAVResourceD *resources, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.LockResources(count, resources ? cast(nsIWebDAVResource)resources : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void unlockResources (in PRUint32 count, [array, size_is (count)] in nsIWebDAVResource resources, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void UnlockResources(PRUint32 count, nsIWebDAVResourceD *resources, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.UnlockResources(count, resources ? cast(nsIWebDAVResource)resources : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void getResourcePropertyNames (in nsIWebDAVResource resource, in boolean withDepth, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void GetResourcePropertyNames(nsIWebDAVResourceD resource, PRBool withDepth, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.GetResourcePropertyNames(resource ? cast(nsIWebDAVResource)resource : null, withDepth, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param properties  an array of propertynames, where the namespace
     *                    and the name of the properties are seperated by
     *                    a space
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void getResourceProperties (in nsIWebDAVResource resource, in PRUint32 propCount, [array, size_is (propCount)] in string properties, in boolean withDepth, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void GetResourceProperties(nsIWebDAVResourceD resource, PRUint32 propCount, char**properties, PRBool withDepth, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.GetResourceProperties(resource ? cast(nsIWebDAVResource)resource : null, propCount, properties, withDepth, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void getResourceOptions (in nsIWebDAVResource resource, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void GetResourceOptions(nsIWebDAVResourceD resource, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.GetResourceOptions(resource ? cast(nsIWebDAVResource)resource : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * XXX need to add a closure param
     */
  /* void get (in nsIWebDAVResource resource, in nsIStreamListener listener, in nsIInterfaceRequestor notificationCallbacks); */
  void Get(nsIWebDAVResourceD resource, nsIStreamListenerD listener, nsIInterfaceRequestorD notificationCallbacks){
    nsresult __result = inner.Get(resource ? cast(nsIWebDAVResource)resource : null, listener ? cast(nsIStreamListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null);
    CheckException(__result);
  }

  /**
     * GET the resource and stick it in the provided OutputStream.
     * Your output stream must be buffered, or we will fail miserably.
     * I would check that for you and provide a buffered wrapper automatically,
     * but there is no way to check if one is needed!
     *
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void getToOutputStream (in nsIWebDAVResource resource, in nsIOutputStream stream, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void GetToOutputStream(nsIWebDAVResourceD resource, nsIOutputStreamD stream, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.GetToOutputStream(resource ? cast(nsIWebDAVResource)resource : null, stream ? cast(nsIOutputStream)stream : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * GET the resource and return it to the listener as a string.
     *
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure  caller-private data returned via listener
     */
  /* void getToString (in nsIWebDAVResource resource, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void GetToString(nsIWebDAVResourceD resource, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.GetToString(resource ? cast(nsIWebDAVResource)resource : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void put (in nsIWebDAVResource resource, in ACString contentType, in nsIInputStream data, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void Put(nsIWebDAVResourceD resource, char[] contentType, nsIInputStreamD data, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    scope auto _contentType = new ACString(contentType);
    nsresult __result = inner.Put(resource ? cast(nsIWebDAVResource)resource : null, cast(nsACString*)_contentType, data ? cast(nsIInputStream)data : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void putFromString (in nsIWebDAVResource resource, in ACString contentType, in AUTF8String data, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void PutFromString(nsIWebDAVResourceD resource, char[] contentType, char[] data, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    scope auto _contentType = new ACString(contentType);
    scope auto _data = new ACString(data);
    nsresult __result = inner.PutFromString(resource ? cast(nsIWebDAVResource)resource : null, cast(nsACString*)_contentType, cast(nsACString*)_data, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void remove (in nsIWebDAVResource resource, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void Remove(nsIWebDAVResourceD resource, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.Remove(resource ? cast(nsIWebDAVResource)resource : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void moveTo (in nsIWebDAVResource resource, in ACString destination, in boolean overwrite, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void MoveTo(nsIWebDAVResourceD resource, char[] destination, PRBool overwrite, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    scope auto _destination = new ACString(destination);
    nsresult __result = inner.MoveTo(resource ? cast(nsIWebDAVResource)resource : null, cast(nsACString*)_destination, overwrite, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void copyTo (in nsIWebDAVResource resource, in ACString destination, in boolean recursive, in boolean overwrite, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void CopyTo(nsIWebDAVResourceD resource, char[] destination, PRBool recursive, PRBool overwrite, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    scope auto _destination = new ACString(destination);
    nsresult __result = inner.CopyTo(resource ? cast(nsIWebDAVResource)resource : null, cast(nsACString*)_destination, recursive, overwrite, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void makeCollection (in nsIWebDAVResource resource, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void MakeCollection(nsIWebDAVResourceD resource, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.MakeCollection(resource ? cast(nsIWebDAVResource)resource : null, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /**
     * Requests the specified report on the given resource with a Depth: header
     * set to zero.
     * 
     * @param resource  the resource to perform this query on?
     * @param query     an XML document of the query
     * @param withDepth if true, set the Depth header to 1 instead of 0
     * @param listener  results will be called back through this interface
     * @param notificationCallbacks  
     *                  The notification callbacks to be passed to the channel
     *                  that will be used to perform this opperation.  This is
     *                  set by clients, who wish to provide a means to receive
     *                  progress, status and protocol-specific notifications.
     *                  
     *                  Interfaces commonly requested include: 
     *                  nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt.
     * @param closure   caller-private data returned via listener
     */
  /* void report (in nsIWebDAVResource resource, in nsIDOMDocument query, in boolean withDepth, in nsIWebDAVOperationListener listener, in nsIInterfaceRequestor notificationCallbacks, in nsISupports closure); */
  void Report(nsIWebDAVResourceD resource, nsIDOMDocumentD query, PRBool withDepth, nsIWebDAVOperationListenerD listener, nsIInterfaceRequestorD notificationCallbacks, nsISupportsD closure){
    nsresult __result = inner.Report(resource ? cast(nsIWebDAVResource)resource : null, query ? cast(nsIDOMDocument)query : null, withDepth, listener ? cast(nsIWebDAVOperationListener)listener : null, notificationCallbacks ? cast(nsIInterfaceRequestor)notificationCallbacks : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

private:
  nsIWebDAVService inner;

}


/* starting wrapper class:    nsIWebDAVResourceXXX */
class nsIWebDAVResourceXXXD : public nsISupportsD {

  static const nsIID IID = NS_IWEBDAVRESOURCEXXX_IID;


  alias nsIWebDAVResourceXXX InnerType;

  this(nsIWebDAVResourceXXX intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebDAVResourceXXX opCast() {
    return inner;
  }

  void opAssign(nsIWebDAVResourceXXX value) {
    inner = value;
  }

  /* readonly attribute boolean isCollection; */
  PRBool IsCollection(){
    PRBool value;
    nsresult __result = inner.GetIsCollection(&value);
    CheckException(__result);
    return value;
  }

  /* void setProperties ([array, size_is (count)] in string propname, [array, size_is (count)] in string propvalues, in PRUint32 count); */
  void SetProperties(char**propname, char**propvalues, PRUint32 count){
    nsresult __result = inner.SetProperties(propname, propvalues, count);
    CheckException(__result);
  }

private:
  nsIWebDAVResourceXXX inner;

}

