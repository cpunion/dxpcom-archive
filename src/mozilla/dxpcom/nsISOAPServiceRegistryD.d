/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPServiceRegistry.idl
 */

module mozilla.dxpcom.nsISOAPServiceRegistryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPServiceRegistry;


public import mozilla.dxpcom.nsISOAPServiceRegistryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsISOAPService;

public import mozilla.dxpcom.nsISOAPServiceD;

public import mozilla.xpcom.nsISOAPEncoding;

import mozilla.dxpcom.nsISOAPEncodingD;


/* starting wrapper class:    nsISOAPServiceRegistry */
/**
 * This interface represents a registry of SOAP services.
 * This registry recieves transports to listen for messages
 *   and services to hand the messages to.  Service registries
 *   may be created as required.  Destroying a service registry
 *   stops the registry's action.  To temporarily register
 *   services, create a new registry.  For proper order of
 *   listening precedence, registries should be destroyed
 *   in reverse order.  Otherwise, a listening priority
 *   would be required.
 */
class nsISOAPServiceRegistryD {

  static const nsIID IID = NS_ISOAPSERVICEREGISTRY_IID;


  alias nsISOAPServiceRegistry InnerType;

  this(nsISOAPServiceRegistry intr){
    this.inner = intr;
  }

  nsISOAPServiceRegistry opCast() {
    return inner;
  }

  void opAssign(nsISOAPServiceRegistry value) {
    inner = value;
  }

  /**
   * Process a configuration and add the resulting sources
   *   and services.  This will fail if errors occur during
   *   processing of the configuration.
   *
   * @param aConfiguration Root element of configuration XML.
   */
  /* boolean addConfiguration (in nsIDOMElement aConfiguration); */
  PRBool AddConfiguration(nsIDOMElementD aConfiguration){
    PRBool _retval;
    nsresult __result = inner.AddConfiguration(aConfiguration ? cast(nsIDOMElement)aConfiguration : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Add a transport to be serviced by the registered services.
   *   This will fail if the specified source was already added
   *   with the same setting of the capture flag.
   *
   * @param aTransport string specifying the transport to supply
   *   messages for the service.
   *
   * @param aCapture True if capturing before later declarations
   */
  /* void addSource (in AString aTransport, in boolean aCapture); */
  void AddSource(wchar[] aTransport, PRBool aCapture){
    scope auto _aTransport = new AString(aTransport);
    nsresult __result = inner.AddSource(cast(nsAString*)_aTransport, aCapture);
    CheckException(__result);
  }

  /**
   * Add a service to service the registered transports.  This
   *   will fail if the specified service was already added.
   *
   * @param aService Service to be serviced.
   */
  /* void addService (in nsISOAPService aService); */
  void AddService(nsISOAPServiceD aService){
    nsresult __result = inner.AddService(aService ? cast(nsISOAPService)aService : null);
    CheckException(__result);
  }

  /**
   * Registry identifying how to encode and decode
   *   messages containing specific types, automatically
   *   added to messages sent to services in this
   *   registry.
   */
  /* attribute nsISOAPEncodingRegistry encodings; */
  nsISOAPEncodingRegistryD  Encodings(){
    nsISOAPEncodingRegistry value;
    nsresult __result = inner.GetEncodings(&value);
    CheckException(__result);
    return new nsISOAPEncodingRegistryD(value);
  }
  void Encodings(nsISOAPEncodingRegistryD  aEncodings){
    nsISOAPEncodingRegistry value;
    nsresult __result = inner.SetEncodings(value);
    CheckException(__result);
  }

private:
  nsISOAPServiceRegistry inner;

}

