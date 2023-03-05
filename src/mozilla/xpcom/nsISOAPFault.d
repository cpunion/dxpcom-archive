/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPFault.idl
 */

module mozilla.xpcom.nsISOAPFault;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsISOAPFault */
const char[] NS_ISOAPFAULT_IID_STR = "99ec6694-535f-11d4-9a58-000064657374";

const nsIID NS_ISOAPFAULT_IID= 
  {0x99ec6694, 0x535f, 0x11d4, 
    [ 0x9a, 0x58, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This interface conveniently interprets information about a fault 
 * that has been returned in a response message.
 *
 */
extern(Windows)
interface nsISOAPFault : nsISupports {
  static const char[] IID_STR = NS_ISOAPFAULT_IID_STR;
  static const nsIID IID = NS_ISOAPFAULT_IID;

  /**
   * The DOM element representing the fault in the response SOAP message.
   * This must be set for the rest of the interface to function correctly.
   */
  /* attribute nsIDOMElement element; */
  nsresult GetElement(nsIDOMElement  *aElement);
  nsresult SetElement(nsIDOMElement  aElement);

  /**
   * The namespaceURI of the fault code.
   */
  /* readonly attribute AString faultNamespaceURI; */
  nsresult GetFaultNamespaceURI(nsAString * aFaultNamespaceURI);

  /**
   * The fault code
   */
  /* readonly attribute AString faultCode; */
  nsresult GetFaultCode(nsAString * aFaultCode);

  /**
   * The fault string
   */
  /* readonly attribute AString faultString; */
  nsresult GetFaultString(nsAString * aFaultString);

  /**
   * The fault actor if one was specified.
   */
  /* readonly attribute AString faultActor; */
  nsresult GetFaultActor(nsAString * aFaultActor);

  /**
   * The DOM element representing the fault details
   */
  /* readonly attribute nsIDOMElement detail; */
  nsresult GetDetail(nsIDOMElement  *aDetail);

}

