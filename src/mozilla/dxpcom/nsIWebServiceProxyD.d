/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebServiceProxy.idl
 */

module mozilla.dxpcom.nsIWebServiceProxyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebServiceProxy;


public import mozilla.dxpcom.nsIWebServiceProxyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWSDL;
public import mozilla.dxpcom.nsIWSDLD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;
public import mozilla.xpcom.nsIException;
public import mozilla.dxpcom.nsIExceptionD;
public import mozilla.xpcom.nsISOAPResponse;
public import mozilla.dxpcom.nsISOAPResponseD;
public import mozilla.xpcom.nsISOAPBlock;
public import mozilla.dxpcom.nsISOAPBlockD;
public import mozilla.xpcom.nsIScriptableInterfaces;
public import mozilla.dxpcom.nsIScriptableInterfacesD;

public import mozilla.xpcom.nsIWebServiceProxy;

import mozilla.dxpcom.nsIWebServiceProxyD;

public import mozilla.xpcom.nsIWebServiceProxy;

import mozilla.dxpcom.nsIWebServiceProxyD;

public import mozilla.xpcom.nsIInterfaceInfo;

public import mozilla.dxpcom.nsIInterfaceInfoD;

public import mozilla.xpcom.nsIPropertyBag;

public import mozilla.dxpcom.nsIPropertyBagD;


/* starting wrapper class:    nsIWebServiceProxyFactory */
class nsIWebServiceProxyFactoryD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSERVICEPROXYFACTORY_IID;


  alias nsIWebServiceProxyFactory InnerType;

  this(nsIWebServiceProxyFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServiceProxyFactory opCast() {
    return inner;
  }

  void opAssign(nsIWebServiceProxyFactory value) {
    inner = value;
  }

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
  nsIWebServiceProxyD  CreateProxy(wchar[] wsdlURL, wchar[] portname, wchar[] qualifier, PRBool isAsync){
    scope auto _wsdlURL = new AString(wsdlURL);
    scope auto _portname = new AString(portname);
    scope auto _qualifier = new AString(qualifier);
    nsIWebServiceProxy _retval;
    nsresult __result = inner.CreateProxy(cast(nsAString*)_wsdlURL, cast(nsAString*)_portname, cast(nsAString*)_qualifier, isAsync, &_retval);
    CheckException(__result);
    return new nsIWebServiceProxyD(_retval);
  }

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
  void CreateProxyAsync(wchar[] wsdlURL, wchar[] portname, wchar[] qualifier, PRBool isAsync, nsIWebServiceProxyCreationListenerD listener){
    scope auto _wsdlURL = new AString(wsdlURL);
    scope auto _portname = new AString(portname);
    scope auto _qualifier = new AString(qualifier);
    nsresult __result = inner.CreateProxyAsync(cast(nsAString*)_wsdlURL, cast(nsAString*)_portname, cast(nsAString*)_qualifier, isAsync, listener ? cast(nsIWebServiceProxyCreationListener)listener : null);
    CheckException(__result);
  }

private:
  nsIWebServiceProxyFactory inner;

}


/* starting wrapper class:    nsIWebServiceProxyCreationListener */
class nsIWebServiceProxyCreationListenerD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSERVICEPROXYCREATIONLISTENER_IID;


  alias nsIWebServiceProxyCreationListener InnerType;

  this(nsIWebServiceProxyCreationListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServiceProxyCreationListener opCast() {
    return inner;
  }

  void opAssign(nsIWebServiceProxyCreationListener value) {
    inner = value;
  }

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
  void OnLoad(nsIWebServiceProxyD proxy){
    nsresult __result = inner.OnLoad(proxy ? cast(nsIWebServiceProxy)proxy : null);
    CheckException(__result);
  }

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
  void OnError(nsIExceptionD error){
    nsresult __result = inner.OnError(error ? cast(nsIException)error : null);
    CheckException(__result);
  }

private:
  nsIWebServiceProxyCreationListener inner;

}


/* starting wrapper class:    nsIWebServiceProxy */
class nsIWebServiceProxyD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSERVICEPROXY_IID;


  alias nsIWebServiceProxy InnerType;

  this(nsIWebServiceProxy intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServiceProxy opCast() {
    return inner;
  }

  void opAssign(nsIWebServiceProxy value) {
    inner = value;
  }

  /* [noscript] void Init (in nsIWSDLPort aPort, in nsIInterfaceInfo aPrimaryInterface, in nsIInterfaceInfoManager aInterfaceInfoManager, in AString aQualifier, in boolean aIsAsync); */
  void Init(nsIWSDLPortD aPort, nsIInterfaceInfoD aPrimaryInterface, nsIInterfaceInfoManagerD aInterfaceInfoManager, wchar[] aQualifier, PRBool aIsAsync){
    scope auto _aQualifier = new AString(aQualifier);
    nsresult __result = inner.Init(aPort ? cast(nsIWSDLPort)aPort : null, aPrimaryInterface ? cast(nsIInterfaceInfo)aPrimaryInterface : null, aInterfaceInfoManager ? cast(nsIInterfaceInfoManager)aInterfaceInfoManager : null, cast(nsAString*)_aQualifier, aIsAsync);
    CheckException(__result);
  }

  /**
   * The WSDL port that this service proxy represents.
   *
   * @see nsIWSDLPort
   */
  /* readonly attribute nsIWSDLPort port; */
  nsIWSDLPortD  Port(){
    nsIWSDLPort value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return new nsIWSDLPortD(value);
  }

  /**
   * PR_TRUE if the service proxy methods represent an asynchronous
   * calling convention. PR_FALSE if the methods are synchronous.
   */
  /* readonly attribute boolean isAsync; */
  PRBool IsAsync(){
    PRBool value;
    nsresult __result = inner.GetIsAsync(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The qualifier used for interface names related to
   * this service proxy.
   */
  /* readonly attribute AString qualifier; */
  wchar[] Qualifier(){
    scope auto value = new AString();
    nsresult __result = inner.GetQualifier(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * An enumerator that returns the set of pending calls for the
   * service proxy. Each call is an instance of the 
   * <code>nsIWebServiceCallContext</code> interface.
   *
   * @see nsIWebServiceCallContext
   */
  /* readonly attribute nsISimpleEnumerator pendingCalls; */
  nsISimpleEnumeratorD  PendingCalls(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetPendingCalls(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /**
   * The name of the primary interface for this proxy. This may or may not be
   * the async version depending on whether or not this is an async proxy.
   */
  /* readonly attribute string primaryInterfaceName; */
  char* PrimaryInterfaceName(){
    char* value;
    nsresult __result = inner.GetPrimaryInterfaceName(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The name of the primary async listener interface for this proxy. 
   * This will be null if this is not an async proxy.
   */
  /* readonly attribute string primaryAsyncListenerInterfaceName; */
  char* PrimaryAsyncListenerInterfaceName(){
    char* value;
    nsresult __result = inner.GetPrimaryAsyncListenerInterfaceName(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The collection of interfaces related to this service proxy. This
   * will include the primary interface implemented by the service
   * proxy as well as any listener or complex type interfaces required
   * for method parameters and return values.
   * NOTE: only interesting from JavaScript.
   */
  /* readonly attribute nsIScriptableInterfaces interfaces; */
  nsIScriptableInterfacesD  Interfaces(){
    nsIScriptableInterfaces value;
    nsresult __result = inner.GetInterfaces(&value);
    CheckException(__result);
    return new nsIScriptableInterfacesD(value);
  }

private:
  nsIWebServiceProxy inner;

}


/* starting wrapper class:    nsIWebServiceCallContext */
/**
 * A representation of a method invocation on a web service.
 * An instance of this interface is returned as a result of making
 * an asynchronous call and can be queried for status of the
 * call.
 */
class nsIWebServiceCallContextD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSERVICECALLCONTEXT_IID;


  alias nsIWebServiceCallContext InnerType;

  this(nsIWebServiceCallContext intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServiceCallContext opCast() {
    return inner;
  }

  void opAssign(nsIWebServiceCallContext value) {
    inner = value;
  }

  /** 
   * Possible values of the <code>status</code> attribute. A pending
   * call has a status of PENDING. A completed call has a status of
   * SUCCEEDED or FAILED depending on the result of the call.
   */
  enum { PENDING = 0U }

  enum { SUCCEEDED = 1U }

  enum { FAILED = 2U }

  enum { ABORTED = 3U }

  /**
   * The proxy object on which the call was made.
   * 
   * @see nsIWebServiceProxy
   */
  /* readonly attribute nsIWebServiceProxy proxy; */
  nsIWebServiceProxyD  Proxy(){
    nsIWebServiceProxy value;
    nsresult __result = inner.GetProxy(&value);
    CheckException(__result);
    return new nsIWebServiceProxyD(value);
  }

  /**
   * The name of the method that was invoked.
   */
  /* readonly attribute AString methodName; */
  wchar[] MethodName(){
    scope auto value = new AString();
    nsresult __result = inner.GetMethodName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The status of the call, whether pending, completed successfully
   * or completed with a fault.
   */
  /* readonly attribute PRUint32 status; */
  PRUint32 Status(){
    PRUint32 value;
    nsresult __result = inner.GetStatus(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The exception generated by the call if the status is FAILURE.
   * The exception object can be introspected for more information.
   * The <code>data</code> member can be QIed to a 
   * <code>nsISOAPFault</code> instance for calls that use a
   * SOAP binding.
   */
  /* readonly attribute nsIException pendingException; */
  nsIExceptionD  PendingException(){
    nsIException value;
    nsresult __result = inner.GetPendingException(&value);
    CheckException(__result);
    return new nsIExceptionD(value);
  }

  /**
   * The WSDL operation that correpsonds to the method being invoked.
   *
   * @see nsIWSDLOperation
   */
  /* readonly attribute nsIWSDLOperation operation; */
  nsIWSDLOperationD  Operation(){
    nsIWSDLOperation value;
    nsresult __result = inner.GetOperation(&value);
    CheckException(__result);
    return new nsIWSDLOperationD(value);
  }

  /**
   * Called to abort a pending call. If the call is still pending,
   * its callback instance's <code>onError</code> will be invoked,
   * passing in the specified exception.
   *
   * @param error The exception passed to the callback instance's
   *              <code>onError</code> method.
   */
  /* void abort (in nsIException error); */
  void Abort(nsIExceptionD error){
    nsresult __result = inner.Abort(error ? cast(nsIException)error : null);
    CheckException(__result);
  }

private:
  nsIWebServiceCallContext inner;

}


/* starting wrapper class:    nsIWebServiceSOAPCallContext */
class nsIWebServiceSOAPCallContextD : public nsIWebServiceCallContextD {

  static const nsIID IID = NS_IWEBSERVICESOAPCALLCONTEXT_IID;


  alias nsIWebServiceSOAPCallContext InnerType;

  this(nsIWebServiceSOAPCallContext intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServiceSOAPCallContext opCast() {
    return inner;
  }

  void opAssign(nsIWebServiceSOAPCallContext value) {
    inner = value;
  }

  /**
   * For users who want access to the lower-level constructs that
   * are used for the method invocation, this attributes provides
   * the SOAP response once the call has completed.
   *
   * @see nsISOAPResponse
   */
  /* readonly attribute nsISOAPResponse soapResponse; */
  nsISOAPResponseD  SoapResponse(){
    nsISOAPResponse value;
    nsresult __result = inner.GetSoapResponse(&value);
    CheckException(__result);
    return new nsISOAPResponseD(value);
  }

private:
  nsIWebServiceSOAPCallContext inner;

}


/* starting wrapper class:    nsIWebServiceComplexTypeWrapper */
class nsIWebServiceComplexTypeWrapperD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSERVICECOMPLEXTYPEWRAPPER_IID;


  alias nsIWebServiceComplexTypeWrapper InnerType;

  this(nsIWebServiceComplexTypeWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServiceComplexTypeWrapper opCast() {
    return inner;
  }

  void opAssign(nsIWebServiceComplexTypeWrapper value) {
    inner = value;
  }

  /* void Init (in nsISupports aComplexTypeInstance, in nsIInterfaceInfo aInterfaceInfo); */
  void Init(nsISupportsD aComplexTypeInstance, nsIInterfaceInfoD aInterfaceInfo){
    nsresult __result = inner.Init(aComplexTypeInstance ? cast(nsISupports)aComplexTypeInstance : null, aInterfaceInfo ? cast(nsIInterfaceInfo)aInterfaceInfo : null);
    CheckException(__result);
  }

private:
  nsIWebServiceComplexTypeWrapper inner;

}


/* starting wrapper class:    nsIWebServicePropertyBagWrapper */
class nsIWebServicePropertyBagWrapperD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSERVICEPROPERTYBAGWRAPPER_IID;


  alias nsIWebServicePropertyBagWrapper InnerType;

  this(nsIWebServicePropertyBagWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebServicePropertyBagWrapper opCast() {
    return inner;
  }

  void opAssign(nsIWebServicePropertyBagWrapper value) {
    inner = value;
  }

  /* void Init (in nsIPropertyBag aPropertyBag, in nsIInterfaceInfo aInterfaceInfo); */
  void Init(nsIPropertyBagD aPropertyBag, nsIInterfaceInfoD aInterfaceInfo){
    nsresult __result = inner.Init(aPropertyBag ? cast(nsIPropertyBag)aPropertyBag : null, aInterfaceInfo ? cast(nsIInterfaceInfo)aInterfaceInfo : null);
    CheckException(__result);
  }

private:
  nsIWebServicePropertyBagWrapper inner;

}

