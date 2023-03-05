/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebDAVService.idl
 */

module mozilla.xpcom.nsIWebDAVService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWebDAVListener;
public import mozilla.xpcom.nsIWebDAVResource;

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIWebDAVService */
const char[] NS_IWEBDAVSERVICE_IID_STR = "173ef52e-2a2f-45ca-8f9f-abc7429163c2";

const nsIID NS_IWEBDAVSERVICE_IID= 
  {0x173ef52e, 0x2a2f, 0x45ca, 
    [ 0x8f, 0x9f, 0xab, 0xc7, 0x42, 0x91, 0x63, 0xc2 ]};

extern(Windows)
interface nsIWebDAVService : nsISupports {
  static const char[] IID_STR = NS_IWEBDAVSERVICE_IID_STR;
  static const nsIID IID = NS_IWEBDAVSERVICE_IID;

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
  nsresult LockResources(PRUint32 count, nsIWebDAVResource *resources, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult UnlockResources(PRUint32 count, nsIWebDAVResource *resources, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult GetResourcePropertyNames(nsIWebDAVResource resource, PRBool withDepth, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult GetResourceProperties(nsIWebDAVResource resource, PRUint32 propCount, char **properties, PRBool withDepth, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult GetResourceOptions(nsIWebDAVResource resource, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult Get(nsIWebDAVResource resource, nsIStreamListener listener, nsIInterfaceRequestor notificationCallbacks);

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
  nsresult GetToOutputStream(nsIWebDAVResource resource, nsIOutputStream stream, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult GetToString(nsIWebDAVResource resource, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult Put(nsIWebDAVResource resource, nsACString * contentType, nsIInputStream data, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult PutFromString(nsIWebDAVResource resource, nsACString * contentType, nsACString * data, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult Remove(nsIWebDAVResource resource, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult MoveTo(nsIWebDAVResource resource, nsACString * destination, PRBool overwrite, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult CopyTo(nsIWebDAVResource resource, nsACString * destination, PRBool recursive, PRBool overwrite, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult MakeCollection(nsIWebDAVResource resource, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

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
  nsresult Report(nsIWebDAVResource resource, nsIDOMDocument query, PRBool withDepth, nsIWebDAVOperationListener listener, nsIInterfaceRequestor notificationCallbacks, nsISupports closure);

}


/* starting interface:    nsIWebDAVResourceXXX */
const char[] NS_IWEBDAVRESOURCEXXX_IID_STR = "96c8d65a-fa17-408c-8008-1aa2b95952d4";

const nsIID NS_IWEBDAVRESOURCEXXX_IID= 
  {0x96c8d65a, 0xfa17, 0x408c, 
    [ 0x80, 0x08, 0x1a, 0xa2, 0xb9, 0x59, 0x52, 0xd4 ]};

extern(Windows)
interface nsIWebDAVResourceXXX : nsISupports {
  static const char[] IID_STR = NS_IWEBDAVRESOURCEXXX_IID_STR;
  static const nsIID IID = NS_IWEBDAVRESOURCEXXX_IID;

  /* readonly attribute boolean isCollection; */
  nsresult GetIsCollection(PRBool *aIsCollection);

  /* void setProperties ([array, size_is (count)] in string propname, [array, size_is (count)] in string propvalues, in PRUint32 count); */
  nsresult SetProperties(char **propname, char **propvalues, PRUint32 count);

}

