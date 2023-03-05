/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebContentHandlerRegistrar.idl
 */

module mozilla.dxpcom.nsIWebContentHandlerRegistrarD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebContentHandlerRegistrar;


public import mozilla.dxpcom.nsIWebContentHandlerRegistrarD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIWebContentHandlerRegistrar */
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
class nsIWebContentHandlerRegistrarD : public nsISupportsD {

  static const nsIID IID = NS_IWEBCONTENTHANDLERREGISTRAR_IID;


  alias nsIWebContentHandlerRegistrar InnerType;

  this(nsIWebContentHandlerRegistrar intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebContentHandlerRegistrar opCast() {
    return inner;
  }

  void opAssign(nsIWebContentHandlerRegistrar value) {
    inner = value;
  }

  /**
   * See documentation in nsIDOMClientInformation.idl
   * The additional contentWindow param for both methods represents the dom
   * content window from which the method has been called.
   */
  /* void registerContentHandler (in DOMString mimeType, in DOMString uri, in DOMString title, in nsIDOMWindow contentWindow); */
  void RegisterContentHandler(wchar[] mimeType, wchar[] uri, wchar[] title, nsIDOMWindowD contentWindow){
    scope auto _mimeType = new AString(mimeType);
    scope auto _uri = new AString(uri);
    scope auto _title = new AString(title);
    nsresult __result = inner.RegisterContentHandler(cast(nsAString*)_mimeType, cast(nsAString*)_uri, cast(nsAString*)_title, contentWindow ? cast(nsIDOMWindow)contentWindow : null);
    CheckException(__result);
  }

  /* void registerProtocolHandler (in DOMString protocol, in DOMString uri, in DOMString title, in nsIDOMWindow contentWindow); */
  void RegisterProtocolHandler(wchar[] protocol, wchar[] uri, wchar[] title, nsIDOMWindowD contentWindow){
    scope auto _protocol = new AString(protocol);
    scope auto _uri = new AString(uri);
    scope auto _title = new AString(title);
    nsresult __result = inner.RegisterProtocolHandler(cast(nsAString*)_protocol, cast(nsAString*)_uri, cast(nsAString*)_title, contentWindow ? cast(nsIDOMWindow)contentWindow : null);
    CheckException(__result);
  }

private:
  nsIWebContentHandlerRegistrar inner;

}

