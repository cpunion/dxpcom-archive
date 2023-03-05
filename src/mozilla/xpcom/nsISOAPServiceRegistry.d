/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPServiceRegistry.idl
 */

module mozilla.xpcom.nsISOAPServiceRegistry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsISOAPService; /* forward declaration */

public import mozilla.xpcom.nsISOAPEncoding;


/* starting interface:    nsISOAPServiceRegistry */
const char[] NS_ISOAPSERVICEREGISTRY_IID_STR = "9790d6bc-1dd1-11b2-afe0-bcb310c078bf";

const nsIID NS_ISOAPSERVICEREGISTRY_IID= 
  {0x9790d6bc, 0x1dd1, 0x11b2, 
    [ 0xaf, 0xe0, 0xbc, 0xb3, 0x10, 0xc0, 0x78, 0xbf ]};

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
extern(Windows)
interface nsISOAPServiceRegistry {
  static const char[] IID_STR = NS_ISOAPSERVICEREGISTRY_IID_STR;
  static const nsIID IID = NS_ISOAPSERVICEREGISTRY_IID;

  /**
   * Process a configuration and add the resulting sources
   *   and services.  This will fail if errors occur during
   *   processing of the configuration.
   *
   * @param aConfiguration Root element of configuration XML.
   */
  /* boolean addConfiguration (in nsIDOMElement aConfiguration); */
  nsresult AddConfiguration(nsIDOMElement aConfiguration, PRBool *_retval);

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
  nsresult AddSource(nsAString * aTransport, PRBool aCapture);

  /**
   * Add a service to service the registered transports.  This
   *   will fail if the specified service was already added.
   *
   * @param aService Service to be serviced.
   */
  /* void addService (in nsISOAPService aService); */
  nsresult AddService(nsISOAPService aService);

  /**
   * Registry identifying how to encode and decode
   *   messages containing specific types, automatically
   *   added to messages sent to services in this
   *   registry.
   */
  /* attribute nsISOAPEncodingRegistry encodings; */
  nsresult GetEncodings(nsISOAPEncodingRegistry  *aEncodings);
  nsresult SetEncodings(nsISOAPEncodingRegistry  aEncodings);

}

