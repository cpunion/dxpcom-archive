/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebServiceProxy.idl
 */

module mozilla.xpcom.nsIWebServiceProxy;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWSDL;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.xpcom.nsIException;
public import mozilla.xpcom.nsISOAPResponse;
public import mozilla.xpcom.nsISOAPBlock;
public import mozilla.xpcom.nsIScriptableInterfaces;

public import mozilla.xpcom.nsIWebServiceProxy;

public import mozilla.xpcom.nsIWebServiceProxy;

public import mozilla.xpcom.nsIInterfaceInfo; /* forward declaration */

public import mozilla.xpcom.nsIPropertyBag; /* forward declaration */


/* starting interface:    nsIWebServiceProxyFactory */
const char[] NS_IWEBSERVICEPROXYFACTORY_IID_STR = "693611be-bb38-40e0-a98e-b46ff8a5bcca";

const nsIID NS_IWEBSERVICEPROXYFACTORY_IID= 
  {0x693611be, 0xbb38, 0x40e0, 
    [ 0xa9, 0x8e, 0xb4, 0x6f, 0xf8, 0xa5, 0xbc, 0xca ]};

extern(Windows)
interface nsIWebServiceProxyFactory : nsISupports {
  static const char[] IID_STR = NS_IWEBSERVICEPROXYFACTORY_IID_STR;
  static const nsIID IID = NS_IWEBSERVICEPROXYFACTORY_IID;

  /**
   * Create a service proxy. Loading of the WSDL URL will occur
   * in a synchronous manner. Calls to web service can be made as
   * soon as this method completes.
   *
   * @param wsdlURL The URL of the WSDL service description. This
   *                description will be loaded and used as the basis
   *                for the service proxy.
   * @param portname The name of the port of the service that this 
   *                 service proxy represents. Currently the port
   *                 must represent a SOAP binding.
   * @param qualifier The user-specified qualifier is incorporated into
   *                  the names of XPCOM interfaces created for the 
   *                  service proxy. For C++ callers, this qualifier 
   *                  should be the  same one used in creating the IDL 
   *                  used at compile time. Script callers need not 
   *                  specify a qualifier.
   * @param isAsync If PR_TRUE, the method signatures of the service
   *                proxy represent an asynchronous calling convention.
   *                A callback instance must be registered with the proxy.
   *                A method call to a web service is only completed when
   *                the corresponding callback method is invoked.
   *                If PR_FALSE, the method signatures of the service
   *                proxy represent a synchronous callling convention.
   *                A method call to a web service is completed when the
   *                method call to the proxy returns.
   */
  /* nsIWebServiceProxy createProxy (in AString wsdlURL, in AString portname, in AString qualifier, in boolean isAsync); */
  nsresult CreateProxy(nsAString * wsdlURL, nsAString * portname, nsAString * qualifier, PRBool isAsync, nsIWebServiceProxy *_retval);

  /**
   * Create a service proxy. Loading of the WSDL URL will occur
   * in an asynchronous manner. Methods on the listener instance will
   * be invoked when the proxy has been created. Any method invocations
   * on the service proxy prior to asynchronous completion of the 
   * intialization step will fail. The caller is guaranteed that this
   * method will return before the listener is invoked.
   *
   * @param wsdlURL The URL of the WSDL service description. This
   *                description will be loaded and used as the basis
   *                for the service proxy.
   * @param portname The name of the port of the service that this 
   *                 service proxy represents. Currently the port
   *                 must represent a SOAP binding.
   * @param qualifier The user-specified qualifier is incorporated into
   *                  the names of XPCOM interfaces created for the 
   *                  service proxy. For C++ callers, this qualifier 
   *                  should be the same one used in creating the IDL 
   *                  used at compile time. Script callers need not 
   *                  specify a qualifier.
   * @param isAsync If PR_TRUE, the method signatures of the service
   *                proxy represent an asynchronous calling convention.
   *                A callback instance must be registered with the proxy.
   *                A method call to a web service is only completed when
   *                the corresponding callback method is invoked.
   *                If PR_FALSE, the method signatures of the service
   *                proxy represent a synchronous callling convention.
   *                A method call to a web service is completed when the
   *                method call to the proxy returns.
   * @param listener The callback instance which will be invoked when
   *                 the proxy is completely initialized.
   */
  /* void createProxyAsync (in AString wsdlURL, in AString portname, in AString qualifier, in boolean isAsync, in nsIWebServiceProxyCreationListener listener); */
  nsresult CreateProxyAsync(nsAString * wsdlURL, nsAString * portname, nsAString * qualifier, PRBool isAsync, nsIWebServiceProxyCreationListener listener);

}


/* starting interface:    nsIWebServiceProxyCreationListener */
const char[] NS_IWEBSERVICEPROXYCREATIONLISTENER_IID_STR = "a711250b-47da-4f16-a1fd-593de16375a1";

const nsIID NS_IWEBSERVICEPROXYCREATIONLISTENER_IID= 
  {0xa711250b, 0x47da, 0x4f16, 
    [ 0xa1, 0xfd, 0x59, 0x3d, 0xe1, 0x63, 0x75, 0xa1 ]};

extern(Windows)
interface nsIWebServiceProxyCreationListener : nsISupports {
  static const char[] IID_STR = NS_IWEBSERVICEPROXYCREATIONLISTENER_IID_STR;
  static const nsIID IID = NS_IWEBSERVICEPROXYCREATIONLISTENER_IID;

  /**
 * This interface should be implemented by a user who creates
 * a web service proxy in an asynchronous manner. An instance
 * of this interface is passed into the <code>initAsync</code>
 * method of the proxy.
 */
/**
   * Invoked when the proxy is completely initialized. Method
   * calls on the proxy can be made once this method is called.
   * 
   * @param proxy The initialized web service proxy
   */
  /* void onLoad (in nsIWebServiceProxy proxy); */
  nsresult OnLoad(nsIWebServiceProxy proxy);

  /**
   * Invoked if an error occurs during web service proxy
   * initialization. This error code be a result of attempting
   * to load the specified WSDL URL or a result of processing
   * the WSDL and creating the interface information for the 
   * proxy.
   *
   * @param error The exception generated as a result of the
   *                  error. This object can be introspected
   *                  for further information.
   */
  /* void onError (in nsIException error); */
  nsresult OnError(nsIException error);

}


/* starting interface:    nsIWebServiceProxy */
const char[] NS_IWEBSERVICEPROXY_IID_STR = "2122421c-1326-41db-87f8-25519d8a12cb";

const nsIID NS_IWEBSERVICEPROXY_IID= 
  {0x2122421c, 0x1326, 0x41db, 
    [ 0x87, 0xf8, 0x25, 0x51, 0x9d, 0x8a, 0x12, 0xcb ]};

extern(Windows)
interface nsIWebServiceProxy : nsISupports {
  static const char[] IID_STR = NS_IWEBSERVICEPROXY_IID_STR;
  static const nsIID IID = NS_IWEBSERVICEPROXY_IID;

  /* [noscript] void Init (in nsIWSDLPort aPort, in nsIInterfaceInfo aPrimaryInterface, in nsIInterfaceInfoManager aInterfaceInfoManager, in AString aQualifier, in boolean aIsAsync); */
  nsresult Init(nsIWSDLPort aPort, nsIInterfaceInfo aPrimaryInterface, nsIInterfaceInfoManager aInterfaceInfoManager, nsAString * aQualifier, PRBool aIsAsync);

  /**
   * The WSDL port that this service proxy represents.
   *
   * @see nsIWSDLPort
   */
  /* readonly attribute nsIWSDLPort port; */
  nsresult GetPort(nsIWSDLPort  *aPort);

  /**
   * PR_TRUE if the service proxy methods represent an asynchronous
   * calling convention. PR_FALSE if the methods are synchronous.
   */
  /* readonly attribute boolean isAsync; */
  nsresult GetIsAsync(PRBool *aIsAsync);

  /**
   * The qualifier used for interface names related to
   * this service proxy.
   */
  /* readonly attribute AString qualifier; */
  nsresult GetQualifier(nsAString * aQualifier);

  /**
   * An enumerator that returns the set of pending calls for the
   * service proxy. Each call is an instance of the 
   * <code>nsIWebServiceCallContext</code> interface.
   *
   * @see nsIWebServiceCallContext
   */
  /* readonly attribute nsISimpleEnumerator pendingCalls; */
  nsresult GetPendingCalls(nsISimpleEnumerator  *aPendingCalls);

  /**
   * The name of the primary interface for this proxy. This may or may not be
   * the async version depending on whether or not this is an async proxy.
   */
  /* readonly attribute string primaryInterfaceName; */
  nsresult GetPrimaryInterfaceName(char * *aPrimaryInterfaceName);

  /**
   * The name of the primary async listener interface for this proxy. 
   * This will be null if this is not an async proxy.
   */
  /* readonly attribute string primaryAsyncListenerInterfaceName; */
  nsresult GetPrimaryAsyncListenerInterfaceName(char * *aPrimaryAsyncListenerInterfaceName);

  /**
   * The collection of interfaces related to this service proxy. This
   * will include the primary interface implemented by the service
   * proxy as well as any listener or complex type interfaces required
   * for method parameters and return values.
   * NOTE: only interesting from JavaScript.
   */
  /* readonly attribute nsIScriptableInterfaces interfaces; */
  nsresult GetInterfaces(nsIScriptableInterfaces  *aInterfaces);

}


/* starting interface:    nsIWebServiceCallContext */
const char[] NS_IWEBSERVICECALLCONTEXT_IID_STR = "87d87900-f102-4a15-b345-7b77a49d2df2";

const nsIID NS_IWEBSERVICECALLCONTEXT_IID= 
  {0x87d87900, 0xf102, 0x4a15, 
    [ 0xb3, 0x45, 0x7b, 0x77, 0xa4, 0x9d, 0x2d, 0xf2 ]};

/**
 * A representation of a method invocation on a web service.
 * An instance of this interface is returned as a result of making
 * an asynchronous call and can be queried for status of the
 * call.
 */
extern(Windows)
interface nsIWebServiceCallContext : nsISupports {
  static const char[] IID_STR = NS_IWEBSERVICECALLCONTEXT_IID_STR;
  static const nsIID IID = NS_IWEBSERVICECALLCONTEXT_IID;

  /** 
   * Possible values of the <code>status</code> attribute. A pending
   * call has a status of PENDING. A completed call has a status of
   * SUCCEEDED or FAILED depending on the result of the call.
   */
  enum { PENDING = 0U };

  enum { SUCCEEDED = 1U };

  enum { FAILED = 2U };

  enum { ABORTED = 3U };

  /**
   * The proxy object on which the call was made.
   * 
   * @see nsIWebServiceProxy
   */
  /* readonly attribute nsIWebServiceProxy proxy; */
  nsresult GetProxy(nsIWebServiceProxy  *aProxy);

  /**
   * The name of the method that was invoked.
   */
  /* readonly attribute AString methodName; */
  nsresult GetMethodName(nsAString * aMethodName);

  /**
   * The status of the call, whether pending, completed successfully
   * or completed with a fault.
   */
  /* readonly attribute PRUint32 status; */
  nsresult GetStatus(PRUint32 *aStatus);

  /**
   * The exception generated by the call if the status is FAILURE.
   * The exception object can be introspected for more information.
   * The <code>data</code> member can be QIed to a 
   * <code>nsISOAPFault</code> instance for calls that use a
   * SOAP binding.
   */
  /* readonly attribute nsIException pendingException; */
  nsresult GetPendingException(nsIException  *aPendingException);

  /**
   * The WSDL operation that correpsonds to the method being invoked.
   *
   * @see nsIWSDLOperation
   */
  /* readonly attribute nsIWSDLOperation operation; */
  nsresult GetOperation(nsIWSDLOperation  *aOperation);

  /**
   * Called to abort a pending call. If the call is still pending,
   * its callback instance's <code>onError</code> will be invoked,
   * passing in the specified exception.
   *
   * @param error The exception passed to the callback instance's
   *              <code>onError</code> method.
   */
  /* void abort (in nsIException error); */
  nsresult Abort(nsIException error);

}


/* starting interface:    nsIWebServiceSOAPCallContext */
const char[] NS_IWEBSERVICESOAPCALLCONTEXT_IID_STR = "1ef83ece-b645-4b55-a501-df42c3333b47";

const nsIID NS_IWEBSERVICESOAPCALLCONTEXT_IID= 
  {0x1ef83ece, 0xb645, 0x4b55, 
    [ 0xa5, 0x01, 0xdf, 0x42, 0xc3, 0x33, 0x3b, 0x47 ]};

extern(Windows)
interface nsIWebServiceSOAPCallContext : nsIWebServiceCallContext {
  static const char[] IID_STR = NS_IWEBSERVICESOAPCALLCONTEXT_IID_STR;
  static const nsIID IID = NS_IWEBSERVICESOAPCALLCONTEXT_IID;

  /**
   * For users who want access to the lower-level constructs that
   * are used for the method invocation, this attributes provides
   * the SOAP response once the call has completed.
   *
   * @see nsISOAPResponse
   */
  /* readonly attribute nsISOAPResponse soapResponse; */
  nsresult GetSoapResponse(nsISOAPResponse  *aSoapResponse);

}


/* starting interface:    nsIWebServiceComplexTypeWrapper */
const char[] NS_IWEBSERVICECOMPLEXTYPEWRAPPER_IID_STR = "b16b15bc-bfad-43cf-b374-2e4651acbc3c";

const nsIID NS_IWEBSERVICECOMPLEXTYPEWRAPPER_IID= 
  {0xb16b15bc, 0xbfad, 0x43cf, 
    [ 0xb3, 0x74, 0x2e, 0x46, 0x51, 0xac, 0xbc, 0x3c ]};

extern(Windows)
interface nsIWebServiceComplexTypeWrapper : nsISupports {
  static const char[] IID_STR = NS_IWEBSERVICECOMPLEXTYPEWRAPPER_IID_STR;
  static const nsIID IID = NS_IWEBSERVICECOMPLEXTYPEWRAPPER_IID;

  /* void Init (in nsISupports aComplexTypeInstance, in nsIInterfaceInfo aInterfaceInfo); */
  nsresult Init(nsISupports aComplexTypeInstance, nsIInterfaceInfo aInterfaceInfo);

}


/* starting interface:    nsIWebServicePropertyBagWrapper */
const char[] NS_IWEBSERVICEPROPERTYBAGWRAPPER_IID_STR = "e0b1765e-c0be-4a28-aca3-b292c5c3788b";

const nsIID NS_IWEBSERVICEPROPERTYBAGWRAPPER_IID= 
  {0xe0b1765e, 0xc0be, 0x4a28, 
    [ 0xac, 0xa3, 0xb2, 0x92, 0xc5, 0xc3, 0x78, 0x8b ]};

extern(Windows)
interface nsIWebServicePropertyBagWrapper : nsISupports {
  static const char[] IID_STR = NS_IWEBSERVICEPROPERTYBAGWRAPPER_IID_STR;
  static const nsIID IID = NS_IWEBSERVICEPROPERTYBAGWRAPPER_IID;

  /* void Init (in nsIPropertyBag aPropertyBag, in nsIInterfaceInfo aInterfaceInfo); */
  nsresult Init(nsIPropertyBag aPropertyBag, nsIInterfaceInfo aInterfaceInfo);

}

