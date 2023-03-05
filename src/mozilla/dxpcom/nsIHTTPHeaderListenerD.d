/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTTPHeaderListener.idl
 */

module mozilla.dxpcom.nsIHTTPHeaderListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHTTPHeaderListener;


public import mozilla.dxpcom.nsIHTTPHeaderListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIHTTPHeaderListener */
/**
 * The nsIHTTPHeaderListener interface allows plugin authors to
 * access HTTP Response headers after issuing an
 * nsIPluginManager::{GetURL,PostURL}() call. <P>

 * IMPORTANT NOTE: The plugin author must provide an instance to
 * {GetURL,PostURL}() that implements both nsIPluginStreamListener and
 * nsIHTTPHeaderListener.  This instance is passed in through
 * {GetURL,PostURL}()'s streamListener parameter.  The browser will then
 * QI thi streamListener to see if it implements
 * nsIHTTPHeaderListener.
 */
class nsIHTTPHeaderListenerD : public nsISupportsD {

  static const nsIID IID = NS_IHTTPHEADERLISTENER_IID;


  alias nsIHTTPHeaderListener InnerType;

  this(nsIHTTPHeaderListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIHTTPHeaderListener opCast() {
    return inner;
  }

  void opAssign(nsIHTTPHeaderListener value) {
    inner = value;
  }

  /**
   * Called for each HTTP Response header.
   * NOTE: You must copy the values of the params.  
   */
  /* void newResponseHeader (in string headerName, in string headerValue); */
  void NewResponseHeader(char*headerName, char*headerValue){
    nsresult __result = inner.NewResponseHeader(headerName, headerValue);
    CheckException(__result);
  }

private:
  nsIHTTPHeaderListener inner;

}

