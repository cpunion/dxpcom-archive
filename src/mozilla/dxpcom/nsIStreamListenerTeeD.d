/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamListenerTee.idl
 */

module mozilla.dxpcom.nsIStreamListenerTeeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStreamListenerTee;


public import mozilla.dxpcom.nsIStreamListenerTeeD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIStreamListenerTee */
/**
 * As data "flows" into a stream listener tee, it is copied to the output stream
 * and then forwarded to the real listener.
 */
class nsIStreamListenerTeeD : public nsIStreamListenerD {

  static const nsIID IID = NS_ISTREAMLISTENERTEE_IID;


  alias nsIStreamListenerTee InnerType;

  this(nsIStreamListenerTee intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamListenerTee opCast() {
    return inner;
  }

  void opAssign(nsIStreamListenerTee value) {
    inner = value;
  }

  /* void init (in nsIStreamListener listener, in nsIOutputStream sink); */
  void Init(nsIStreamListenerD listener, nsIOutputStreamD sink){
    nsresult __result = inner.Init(listener ? cast(nsIStreamListener)listener : null, sink ? cast(nsIOutputStream)sink : null);
    CheckException(__result);
  }

private:
  nsIStreamListenerTee inner;

}

