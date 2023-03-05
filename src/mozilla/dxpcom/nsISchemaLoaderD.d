/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaLoader.idl
 */

module mozilla.dxpcom.nsISchemaLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISchemaLoader;


public import mozilla.dxpcom.nsISchemaLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWebServiceErrorHandler;
public import mozilla.dxpcom.nsIWebServiceErrorHandlerD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;


/* starting wrapper class:    nsISchemaLoader */
class nsISchemaLoaderD : public nsISupportsD {

  static const nsIID IID = NS_ISCHEMALOADER_IID;


  alias nsISchemaLoader InnerType;

  this(nsISchemaLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaLoader opCast() {
    return inner;
  }

  void opAssign(nsISchemaLoader value) {
    inner = value;
  }

  /* nsISchema load (in AString schemaURI); */
  nsISchemaD  Load(wchar[] schemaURI){
    scope auto _schemaURI = new AString(schemaURI);
    nsISchema _retval;
    nsresult __result = inner.Load(cast(nsAString*)_schemaURI, &_retval);
    CheckException(__result);
    return new nsISchemaD(_retval);
  }

  /* void loadAsync (in AString schemaURI, in nsISchemaLoadListener listener); */
  void LoadAsync(wchar[] schemaURI, nsISchemaLoadListenerD listener){
    scope auto _schemaURI = new AString(schemaURI);
    nsresult __result = inner.LoadAsync(cast(nsAString*)_schemaURI, listener ? cast(nsISchemaLoadListener)listener : null);
    CheckException(__result);
  }

  /* nsISchema processSchemaElement (in nsIDOMElement element, in nsIWebServiceErrorHandler aErrorHandler); */
  nsISchemaD  ProcessSchemaElement(nsIDOMElementD element, nsIWebServiceErrorHandlerD aErrorHandler){
    nsISchema _retval;
    nsresult __result = inner.ProcessSchemaElement(element ? cast(nsIDOMElement)element : null, aErrorHandler ? cast(nsIWebServiceErrorHandler)aErrorHandler : null, &_retval);
    CheckException(__result);
    return new nsISchemaD(_retval);
  }

private:
  nsISchemaLoader inner;

}


/* starting wrapper class:    nsISchemaLoadListener */
class nsISchemaLoadListenerD : public nsIWebServiceErrorHandlerD {

  static const nsIID IID = NS_ISCHEMALOADLISTENER_IID;


  alias nsISchemaLoadListener InnerType;

  this(nsISchemaLoadListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaLoadListener opCast() {
    return inner;
  }

  void opAssign(nsISchemaLoadListener value) {
    inner = value;
  }

  /* void onLoad (in nsISchema schema); */
  void OnLoad(nsISchemaD schema){
    nsresult __result = inner.OnLoad(schema ? cast(nsISchema)schema : null);
    CheckException(__result);
  }

private:
  nsISchemaLoadListener inner;

}

