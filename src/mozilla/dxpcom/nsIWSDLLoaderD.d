/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSDLLoader.idl
 */

module mozilla.dxpcom.nsIWSDLLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWSDLLoader;


public import mozilla.dxpcom.nsIWSDLLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWebServiceErrorHandler;
public import mozilla.dxpcom.nsIWebServiceErrorHandlerD;

public import mozilla.xpcom.nsIWSDL;

import mozilla.dxpcom.nsIWSDLD;

public import mozilla.xpcom.nsIWSDLLoader;

import mozilla.dxpcom.nsIWSDLLoaderD;


/* starting wrapper class:    nsIWSDLLoader */
class nsIWSDLLoaderD : public nsISupportsD {

  static const nsIID IID = NS_IWSDLLOADER_IID;


  alias nsIWSDLLoader InnerType;

  this(nsIWSDLLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLLoader opCast() {
    return inner;
  }

  void opAssign(nsIWSDLLoader value) {
    inner = value;
  }

  /* nsIWSDLPort load (in AString wsdlURI, in AString portName); */
  nsIWSDLPortD  Load(wchar[] wsdlURI, wchar[] portName){
    scope auto _wsdlURI = new AString(wsdlURI);
    scope auto _portName = new AString(portName);
    nsIWSDLPort _retval;
    nsresult __result = inner.Load(cast(nsAString*)_wsdlURI, cast(nsAString*)_portName, &_retval);
    CheckException(__result);
    return new nsIWSDLPortD(_retval);
  }

  /* void loadAsync (in AString wsdlURI, in AString portName, in nsIWSDLLoadListener listener); */
  void LoadAsync(wchar[] wsdlURI, wchar[] portName, nsIWSDLLoadListenerD listener){
    scope auto _wsdlURI = new AString(wsdlURI);
    scope auto _portName = new AString(portName);
    nsresult __result = inner.LoadAsync(cast(nsAString*)_wsdlURI, cast(nsAString*)_portName, listener ? cast(nsIWSDLLoadListener)listener : null);
    CheckException(__result);
  }

private:
  nsIWSDLLoader inner;

}


/* starting wrapper class:    nsIWSDLLoadListener */
class nsIWSDLLoadListenerD : public nsIWebServiceErrorHandlerD {

  static const nsIID IID = NS_IWSDLLOADLISTENER_IID;


  alias nsIWSDLLoadListener InnerType;

  this(nsIWSDLLoadListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLLoadListener opCast() {
    return inner;
  }

  void opAssign(nsIWSDLLoadListener value) {
    inner = value;
  }

  /* void onLoad (in nsIWSDLPort port); */
  void OnLoad(nsIWSDLPortD port){
    nsresult __result = inner.OnLoad(port ? cast(nsIWSDLPort)port : null);
    CheckException(__result);
  }

private:
  nsIWSDLLoadListener inner;

}

