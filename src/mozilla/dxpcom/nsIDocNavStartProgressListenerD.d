/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocNavStartProgressListener.idl
 */

module mozilla.dxpcom.nsIDocNavStartProgressListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocNavStartProgressListener;


public import mozilla.dxpcom.nsIDocNavStartProgressListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIDocNavStartProgressCallback */
class nsIDocNavStartProgressCallbackD : public nsISupportsD {

  static const nsIID IID = NS_IDOCNAVSTARTPROGRESSCALLBACK_IID;


  alias nsIDocNavStartProgressCallback InnerType;

  this(nsIDocNavStartProgressCallback intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocNavStartProgressCallback opCast() {
    return inner;
  }

  void opAssign(nsIDocNavStartProgressCallback value) {
    inner = value;
  }

  /* void onDocNavStart (in nsIRequest aRequest, in AUTF8String aUri); */
  void OnDocNavStart(nsIRequestD aRequest, char[] aUri){
    scope auto _aUri = new ACString(aUri);
    nsresult __result = inner.OnDocNavStart(aRequest ? cast(nsIRequest)aRequest : null, cast(nsACString*)_aUri);
    CheckException(__result);
  }

private:
  nsIDocNavStartProgressCallback inner;

}


/* starting wrapper class:    nsIDocNavStartProgressListener */
class nsIDocNavStartProgressListenerD : public nsISupportsD {

  static const nsIID IID = NS_IDOCNAVSTARTPROGRESSLISTENER_IID;


  alias nsIDocNavStartProgressListener InnerType;

  this(nsIDocNavStartProgressListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocNavStartProgressListener opCast() {
    return inner;
  }

  void opAssign(nsIDocNavStartProgressListener value) {
    inner = value;
  }

  /**
   * Set to true to enable this component. Defaults to false (disabled). When
   * you set this to true, the listener will be attached to the docloader and
   * the callback can start getting events.
   */
  /* attribute boolean enabled; */
  PRBool Enabled(){
    PRBool value;
    nsresult __result = inner.GetEnabled(&value);
    CheckException(__result);
    return value;
  }
  void Enabled(PRBool aEnabled){
    nsresult __result = inner.SetEnabled(aEnabled);
    CheckException(__result);
  }

  /**
   * Number of ms to wait after receiving a doc load event and calling the
   * callback.  Even when set to zero, we set a timer so the call will fire
   * asynchronously.  Defaults to 0.
   */
  /* attribute PRUint32 delay; */
  PRUint32 Delay(){
    PRUint32 value;
    nsresult __result = inner.GetDelay(&value);
    CheckException(__result);
    return value;
  }
  void Delay(PRUint32 aDelay){
    PRUint32 value;
    nsresult __result = inner.SetDelay(value);
    CheckException(__result);
  }

  /**
   * Callback object to be used when enabled=true.
   * NULL when there is no callback.
   */
  /* attribute nsIDocNavStartProgressCallback callback; */
  nsIDocNavStartProgressCallbackD  Callback(){
    nsIDocNavStartProgressCallback value;
    nsresult __result = inner.GetCallback(&value);
    CheckException(__result);
    return new nsIDocNavStartProgressCallbackD(value);
  }
  void Callback(nsIDocNavStartProgressCallbackD  aCallback){
    nsIDocNavStartProgressCallback value;
    nsresult __result = inner.SetCallback(value);
    CheckException(__result);
  }

  /**
   * We ignore about:, chrome: and file: URIs.
   */
  /* boolean isSpurious (in nsIURI aURI); */
  PRBool IsSpurious(nsIURID aURI){
    PRBool _retval;
    nsresult __result = inner.IsSpurious(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIDocNavStartProgressListener inner;

}

