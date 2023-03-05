/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebContentHandlerRegistrar.idl
 */

module mozilla.xpcom.nsIWebContentHandlerRegistrar;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIWebContentHandlerRegistrar */
const char[] NS_IWEBCONTENTHANDLERREGISTRAR_IID_STR = "e6a75410-c93e-42bf-84ca-a5c3ec34a2f1";

const nsIID NS_IWEBCONTENTHANDLERREGISTRAR_IID= 
  {0xe6a75410, 0xc93e, 0x42bf, 
    [ 0x84, 0xca, 0xa5, 0xc3, 0xec, 0x34, 0xa2, 0xf1 ]};

/**
 * nsIWebContentHandlerRegistrar
 * 
 * Embedding applications wishing to use web content handlers need to implement 
 * this interface. Typically they will prompt the user to confirm adding an 
 * entry to the local list. 
 *
 * The component must have the contract id defined below so that nsNavigator
 * can invoke it.
 */
extern(Windows)
interface nsIWebContentHandlerRegistrar : nsISupports {
  static const char[] IID_STR = NS_IWEBCONTENTHANDLERREGISTRAR_IID_STR;
  static const nsIID IID = NS_IWEBCONTENTHANDLERREGISTRAR_IID;

  /**
   * See documentation in nsIDOMClientInformation.idl
   * The additional contentWindow param for both methods represents the dom
   * content window from which the method has been called.
   */
  /* void registerContentHandler (in DOMString mimeType, in DOMString uri, in DOMString title, in nsIDOMWindow contentWindow); */
  nsresult RegisterContentHandler(nsAString * mimeType, nsAString * uri, nsAString * title, nsIDOMWindow contentWindow);

  /* void registerProtocolHandler (in DOMString protocol, in DOMString uri, in DOMString title, in nsIDOMWindow contentWindow); */
  nsresult RegisterProtocolHandler(nsAString * protocol, nsAString * uri, nsAString * title, nsIDOMWindow contentWindow);

}

