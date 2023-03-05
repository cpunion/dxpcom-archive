/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharStreamListener.idl
 */

module mozilla.dxpcom.nsIUnicharStreamListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUnicharStreamListener;


public import mozilla.dxpcom.nsIUnicharStreamListenerD;

public import mozilla.xpcom.nsIRequestObserver;
public import mozilla.dxpcom.nsIRequestObserverD;


/* starting wrapper class:    nsIUnicharStreamListener */
/**
 * nsIUnicharStreamListener is very similar to nsIStreamListener with
 * the difference being that this interface gives notifications about
 * data being available after the raw data has been converted to
 * UTF-16.
 *
 * nsIUnicharStreamListener
 *
 * @status FROZEN
 */
class nsIUnicharStreamListenerD : public nsIRequestObserverD {

  static const nsIID IID = NS_IUNICHARSTREAMLISTENER_IID;


  alias nsIUnicharStreamListener InnerType;

  this(nsIUnicharStreamListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIUnicharStreamListener opCast() {
    return inner;
  }

  void opAssign(nsIUnicharStreamListener value) {
    inner = value;
  }

  /**
     * Called when the next chunk of data (corresponding to the
     * request) is available.
     *
     * @param aRequest request corresponding to the source of the data
     * @param aContext user defined context
     * @param aData the data chunk
     *
     * An exception thrown from onUnicharDataAvailable has the
     * side-effect of causing the request to be canceled.
     */
  /* void onUnicharDataAvailable (in nsIRequest aRequest, in nsISupports aContext, in AString aData); */
  void OnUnicharDataAvailable(nsIRequestD aRequest, nsISupportsD aContext, wchar[] aData){
    scope auto _aData = new AString(aData);
    nsresult __result = inner.OnUnicharDataAvailable(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null, cast(nsAString*)_aData);
    CheckException(__result);
  }

private:
  nsIUnicharStreamListener inner;

}

